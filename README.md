
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pymdim

<!-- badges: start -->
<!-- badges: end -->

The goal of pymdim is to wrap the osgeo.gdal python package for multidim
raster.

## Installation

You can install the development version of pymdim like so:

``` r
# FILL THIS IN! HOW CAN PEOPLE INSTALL YOUR DEV PACKAGE?
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(pymdim)
devtools::load_all()
#> ℹ Loading pymdim
get_all_array_full_names(multidimraster(sample(eopf_zarr_examples(), 1)))
#>  [1] "/conditions/"                                       
#>  [2] "/conditions/geometry/latitude"                      
#>  [3] "/conditions/geometry/longitude"                     
#>  [4] "/conditions/geometry/oaa"                           
#>  [5] "/conditions/geometry/oza"                           
#>  [6] "/conditions/geometry/saa"                           
#>  [7] "/conditions/geometry/sza"                           
#>  [8] "/conditions/image/altitude"                         
#>  [9] "/conditions/image/detector_index"                   
#> [10] "/conditions/image/frame_offset"                     
#> [11] "/conditions/image/latitude"                         
#> [12] "/conditions/image/longitude"                        
#> [13] "/conditions/instrument/fwhm"                        
#> [14] "/conditions/instrument/lambda0"                     
#> [15] "/conditions/instrument/relative_spectral_covariance"
#> [16] "/conditions/instrument/solar_flux"                  
#> [17] "/conditions/meteorology/pressure_level"             
#> [18] "/conditions/meteorology/horizontal_wind"            
#> [19] "/conditions/meteorology/humidity"                   
#> [20] "/conditions/meteorology/sea_level_pressure"         
#> [21] "/conditions/meteorology/temperature_profile"        
#> [22] "/conditions/meteorology/total_columnar_water_vapour"
#> [23] "/conditions/meteorology/total_ozone"                
#> [24] "/conditions/time/time_stamp"                        
#> [25] "/measurements/gifapar"                              
#> [26] "/measurements/iwv"                                  
#> [27] "/measurements/latitude"                             
#> [28] "/measurements/longitude"                            
#> [29] "/measurements/otci"                                 
#> [30] "/measurements/rc681"                                
#> [31] "/measurements/rc865"                                
#> [32] "/quality/gifapar_unc"                               
#> [33] "/quality/iwv_unc"                                   
#> [34] "/quality/latitude"                                  
#> [35] "/quality/longitude"                                 
#> [36] "/quality/lqsf"                                      
#> [37] "/quality/otci_quality_flags"                        
#> [38] "/quality/otci_unc"                                  
#> [39] "/quality/rc681_unc"                                 
#> [40] "/quality/rc865_unc"
```
