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

# @export
# print.osgeo.gdal.Dataset <- function(x, ...) {
#   if (!is.null(rg <- x$GetRootGroup())) {
#    cat(sprintf("MultiDimRaster: %s\n",  x$GetDescription()))
#     allarrays<- get_all_array_full_names(x)
#     alldims <- character(0)
#     bad <- integer()
#     for (i in seq_along(allarrays)) {
#       dims <- try(rg$OpenMDArrayFromFullname(allarrays[i])$GetDimensions(), silent = TRUE)
#       if (inherits(dims, "try-error")) {
#         bad <- c(bad, i)
#         next; ## FIXME
#       }
#       alldims <- c(alldims, paste0(unlist(lapply(dims, \(.x) .x$GetSize())), collapse = "x"))
#
#     }
#     allarrays <- allarrays[-bad]
#    nc <- nchar(alldims)
#     writeLines(sprintf("ARRAY: [%s] %s", alldims, allarrays)[order(nc, allarrays,  decreasing = FALSE)])
#   } else {
#     writeLines(.gdal$Info(x))
#   }
# }

## heinous but this works
.oldget_all_array_full_names <- function(ds) {
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

  gsub("/$", "", arrs)
}

get_all_array_full_names <- function(g) {
  groups <- g$GetGroupNames()
  groupname <- g$GetFullName()
  amd <- g$GetMDArrayNames()
  md <- sprintf("%s/%s", groupname, amd)
  md <- c(md, unlist(lapply(groups, \(.g) get_all_array_full_names(g$OpenGroup(.g)))))
  md
}



