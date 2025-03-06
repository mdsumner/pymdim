
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
#>  [2] "/conditions/antenna_pattern/azimuth_time"                              
#>  [3] "/conditions/antenna_pattern/slant_range_time"                          
#>  [4] "/conditions/antenna_pattern/elevation_angle"                           
#>  [5] "/conditions/antenna_pattern/elevation_pattern"                         
#>  [6] "/conditions/antenna_pattern/incidence_angle"                           
#>  [7] "/conditions/antenna_pattern/roll"                                      
#>  [8] "/conditions/antenna_pattern/terrain_height"                            
#>  [9] "/conditions/attitude/azimuth_time"                                     
#> [10] "/conditions/attitude/pitch"                                            
#> [11] "/conditions/attitude/q0"                                               
#> [12] "/conditions/attitude/q1"                                               
#> [13] "/conditions/attitude/q2"                                               
#> [14] "/conditions/attitude/q3"                                               
#> [15] "/conditions/attitude/roll"                                             
#> [16] "/conditions/attitude/wx"                                               
#> [17] "/conditions/attitude/wy"                                               
#> [18] "/conditions/attitude/wz"                                               
#> [19] "/conditions/attitude/yaw"                                              
#> [20] "/conditions/azimuth_fm_rate/azimuth_time"                              
#> [21] "/conditions/azimuth_fm_rate/degree"                                    
#> [22] "/conditions/azimuth_fm_rate/azimuth_fm_rate_polynomial"                
#> [23] "/conditions/azimuth_fm_rate/t0"                                        
#> [24] "/conditions/dc_estimate/azimuth_time"                                  
#> [25] "/conditions/dc_estimate/degree"                                        
#> [26] "/conditions/dc_estimate/data_dc_polynomial"                            
#> [27] "/conditions/dc_estimate/data_dc_rms_error"                             
#> [28] "/conditions/dc_estimate/data_dc_rms_error_above_threshold"             
#> [29] "/conditions/dc_estimate/geometry_dc_polynomial"                        
#> [30] "/conditions/dc_estimate/t0"                                            
#> [31] "/conditions/gcp/azimuth_time"                                          
#> [32] "/conditions/gcp/slant_range_time"                                      
#> [33] "/conditions/gcp/elevation_angle"                                       
#> [34] "/conditions/gcp/height"                                                
#> [35] "/conditions/gcp/incidence_angle"                                       
#> [36] "/conditions/gcp/latitude"                                              
#> [37] "/conditions/gcp/line"                                                  
#> [38] "/conditions/gcp/longitude"                                             
#> [39] "/conditions/gcp/pixel"                                                 
#> [40] "/conditions/orbit/axis"                                                
#> [41] "/conditions/orbit/azimuth_time"                                        
#> [42] "/conditions/orbit/position"                                            
#> [43] "/conditions/orbit/velocity"                                            
#> [44] "/conditions/reference_replica/degree"                                  
#> [45] "/conditions/reference_replica/reference_replica_amplitude_coefficients"
#> [46] "/conditions/reference_replica/reference_replica_phase_coefficients"    
#> [47] "/conditions/replica/azimuth_time"                                      
#> [48] "/conditions/replica/absolute_pg_product_valid_flag"                    
#> [49] "/conditions/replica/cross_correlation_bandwidth"                       
#> [50] "/conditions/replica/cross_correlation_peak_location"                   
#> [51] "/conditions/replica/cross_correlation_pslr"                            
#> [52] "/conditions/replica/internal_time_delay"                               
#> [53] "/conditions/replica/model_pg_product_amplitude"                        
#> [54] "/conditions/replica/model_pg_product_phase"                            
#> [55] "/conditions/replica/pg_product_amplitude"                              
#> [56] "/conditions/replica/pg_product_phase"                                  
#> [57] "/conditions/replica/reconstructed_replica_valid_flag"                  
#> [58] "/conditions/replica/relative_pg_product_valid_flag"                    
#> [59] "/conditions/terrain_height/terrain_height"                             
#> [60] "/measurements/azimuth_time"                                            
#> [61] "/measurements/slant_range_time"                                        
#> [62] "/measurements/line"                                                    
#> [63] "/measurements/pixel"                                                   
#> [64] "/measurements/slc"                                                     
#> [65] "/quality/"                                                             
#> [66] "/quality/calibration/azimuth_time"                                     
#> [67] "/quality/calibration/slant_range_time"                                 
#> [68] "/quality/calibration/beta_nought"                                      
#> [69] "/quality/calibration/dn"                                               
#> [70] "/quality/calibration/gamma"                                            
#> [71] "/quality/calibration/line"                                             
#> [72] "/quality/calibration/pixel"                                            
#> [73] "/quality/calibration/sigma_nought"                                     
#> [74] "/quality/noise/azimuth_time"                                           
#> [75] "/quality/noise/noise_power_correction_factor"                          
#> [76] "/quality/noise/number_of_noise_lines"                                  
#> [77] "/quality/noise_azimuth/"                                               
#> [78] "/quality/noise_range/azimuth_time"                                     
#> [79] "/quality/noise_range/slant_range_time"                                 
#> [80] "/quality/noise_range/line"                                             
#> [81] "/quality/noise_range/noise_range_lut"                                  
#> [82] "/quality/noise_range/pixel"
```
