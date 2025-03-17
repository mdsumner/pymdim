.allarrays <- function(ds) {
  get_all_array_full_names(ds$GetRootGroup())
}

.dimnames <- function(ds, mdname) {
  rg <- ds$GetRootGroup()
  md <- rg$OpenMDArrayFromFullname(mdname)
  vapply(md$GetDimensions(), \(.d) .d$GetName(), "")
}
.dimsizes <- function(ds, mdname) {
  rg <- ds$GetRootGroup()
  md <- rg$OpenMDArrayFromFullname(mdname)

  vapply(md$GetDimensions(), \(.d) .d$GetSize(), 0L)
}

.alldimensions <- function(ds) {
  mda <- .allarrays(ds)
  d <- character(0)
  s <- integer(0)
  for (i in seq_along(mda)) {
    dnames <- .dimnames(ds, mda[i])
    dsizes <- .dimsizes(ds, mda[i])
    for (j in seq_along(dnames)) {
      thisd <- dnames[j]
      if (!thisd %in% d) {
        d <- c(d, thisd)
        s <- c(s, dsizes[j])
      }
    }
  }
  tibble::tibble(dimension  = d, size = s) |> dplyr::arrange(dplyr::desc(size))
}
.allaxes <- function(ds) {
  mda <- .allarrays(ds)
  d <- tibble::tibble()
  for (i in seq_along(mda)) {
    dnames <- .dimnames(ds, mda[i])
    dsizes <- .dimsizes(ds, mda[i])
    d <- rbind(d, tibble::tibble(array = mda[i], dimension = dnames, rank = length(dnames), size = dsizes))
  }
  dplyr::arrange(d, dplyr::desc(rank), dimension, dplyr::desc(size))
}

.allgrids <- function(ds) {
  axes <- .allaxes(ds)
  axes
}
