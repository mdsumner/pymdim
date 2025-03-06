

.onLoad <- function(libname, pkgname) {
  reticulate::py_require("gdal")

#  reticulate::import("osgeo.gdal")$UseExceptions()
 # assign("pygdal", gdal(),
#         envir=.pymdim_env)
}

