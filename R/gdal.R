#.pymdim_env <- new.env()
#' GDAL object from osgeo.gdal
#'
#' @examples
#'
#' g <- gdal()
#' @export
gdal <- function() {
  reticulate::import("osgeo.gdal")
}





multidimraster <- function(x, allowed_drivers = character(), open_options = character(), sibling_files = character()) {
  .gdal <- reticulate::import("osgeo.gdal")
  .gdal$UseExceptions()
  .gdal$OpenEx(x, nOpenFlags = .gdal$OF_MULTIDIM_RASTER, allowed_drivers = as.list(allowed_drivers), open_options = as.list(open_options), sibling_files = as.list(sibling_files))
}

#' @export
print.osgeo.gdal.Dataset <- function(x, ...) {
  sds <- x$
  writeLines(.gdal$Info(x))
}

## heinous but this works
get_all_array_full_names <- function(ds) {
  .env <- character()
  fun <- function(group, base = "") {
  gnames <- group$GetGroupNames()
  anames <- group$GetMDArrayNames()

  .env <<- c(.env, base)
  lapply(gnames, \(.x) fun(group$OpenGroup(.x), paste0(base, "/", .x)))
  }
  rg <- ds$GetRootGroup()
  l <- fun(rg)
  .env <- .env[nzchar(.env)]
  arrs <- character()
  for (i in seq_along(.env)) {
    path <- .env[i]
    g <- rg$OpenGroupFromFullname(path)
    arrs <- c(arrs, paste0(path, "/", g$GetMDArrayNames()))
  }

  arrs
}


