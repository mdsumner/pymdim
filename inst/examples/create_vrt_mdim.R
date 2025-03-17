## use osgeo.gdal to get VRT xml from a netcdf url
to_xml <- function(x) {
  reticulate::py_require("gdal")
  gdal <- reticulate::import("osgeo.gdal")
  gdal$UseExceptions()
  ds <- gdal$OpenEx(x, gdal$OF_MULTIDIM_RASTER)
  vrt <- gdal$Translate(tempfile(fileext = ".vrt", tmpdir = "/vsimem"), ds)
  xml <- vrt$GetMetadata("xml:VRT")[1L]
  ds$Close()
  vrt$Close()
  xml
}

## use osgeo.gdal to get the dimensions of a named MDArray (note we put "/" for the root group)
get_dim <- function(x, varname) {
  reticulate::py_require("gdal")
  gdal <- reticulate::import("osgeo.gdal")
  gdal$UseExceptions()
  ds <- gdal$OpenEx(x, gdal$OF_MULTIDIM_RASTER)
  rg <- ds$GetRootGroup()
  md <- rg$OpenMDArrayFromFullname(sprintf("/%s", varname))
  out <- unlist(lapply(md$GetDimensions(), \(.x) .x$GetSize()))
  ds$Close()
  out
}

#dsn <- "/vsicurl/https://thredds.nci.org.au/thredds/fileServer/gb6/BRAN/BRAN2020/daily/ocean_salt_1997_04.nc"
dates <- seq(as.Date("1993-01-15"), Sys.Date(), by = "1 month")

## flush all files to start with
varname <- "salt"
allfiles <- rev(vapply(rev(dates), bluelink::bluelink_dsn, varname = sprintf("ocean_%s", varname), ""))

alldims <- vector("list", length(allfiles))
ok <- rep(TRUE, length(alldims))
for (i in seq_along(allfiles)) {
  file <- allfiles[i]
  idim  <- try(get_dim(file, varname))
  if (inherits(idim, "try-error")) {
    ok[i] <- FALSE
  } else {
    alldims[[i]] <- idim
  }
  print(i)
}


allfiles <- allfiles[ok]
dsn <- allfiles[1]
files <- allfiles[-1]
alldims <- alldims[ok]
library(xml2)

x <- read_xml(to_xml(dsn))
arraynodes <- xml_find_all(x, "//Array")
node0 <- arraynodes[which(unlist(xml_attrs(arraynodes)) == varname)]

sourcenodes <- xml_find_all(node0, "Source")
firstfile <- xml_text(sourcenodes |> xml_find_all("SourceFilename"))
dim <- get_dim(firstfile, varname)
incr_idx <- 1 ## the c(30, ...) accumulates
total <- dim[incr_idx]
sn <- sourcenodes[[1]]

timenodes <- xml_find_all(x, "//")
tn <-
for (i in seq_along(files)) {

  #dim <- get_dim(files[i], varname)
  dim <- alldims[[i]]
  sn <-   xml_add_sibling(sn, sourcenodes[[1]])

   xml_text(sn) <- files[i]
   sourceslab <- sn |> xml_find_first("SourceSlab")

   xml_attr(sourceslab, "count") <- paste0(dim, collapse = ",")
   destslab <- sn |> xml_find_first("DestSlab")
   xml_attr(destslab, "offset") <- paste0(c(total, 0, 0, 0), collapse = ",")
   total <- total + dim[1L]
}

timenode <- xml_find_first(x, "//Dimension[@name='Time']")
xml_attr(timenode, "size") <- total
write_xml(x, tf <- tempfile(fileext = ".vrt"))

