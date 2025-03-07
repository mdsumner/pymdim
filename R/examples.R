autotest_zarr_examples <- function() {
  base <- "https://raw.githubusercontent.com/OSGeo/gdal/refs/heads/master/autotest/gdrivers/data/zarr"
  autotestzarr <- c("array_attrs.zarr", "array_dimensions.zarr", "array_dimensions_upper_level.zarr",
                    "blosc.zarr", "byte_cf1.zarr", "byte_cf1.zr3", "compound_complex.zarr",
                    "compound_not_aligned.zarr", "compound_well_aligned.zarr", "delta_filter_i4.zarr",
                    "empty.zarr", "f2_be.zarr", "f2_le.zarr", "group.zarr", "group_with_zmetadata.zarr",
                    "gzip.zarr", "lz4.zarr", "lzma.zarr", "lzma_with_filters.zarr",
                    "nczarr_v2.zarr", "order_f_s3.zarr", "order_f_u1.zarr", "order_f_u1_3d.zarr",
                    "order_f_u2.zarr", "order_f_u4.zarr", "order_f_u8.zarr", "shuffle.zarr",
                    "unicode_be.zarr", "unicode_le.zarr", "v3/test.zr3", "v3/test_deprecated_no_codecs.zr3",
                    "zlib.zarr", "zstd.zarr")
  sprintf("ZARR:\"/vsicurl/%s/%s\"", base, autotestzarr)
}

eopf_zarr_examples <- function() {
  sprintf("ZARR:\"/vsizip//vsicurl/%s\"", c("https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S01SIWGRH_20240201T164915_0025_A146_S750E_VH.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S01SIWNRB_20240106T170607_0028_A117_S000_5464A_DV.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S01SIWNRB_20240205T051200_0027_A022_S000_5464A_DV.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S01SIWNRB_20240205T051225_0028_A022_S000_5464A_DV.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S01SIWSLC_20231201T170634_0027_A117_S27C_VH_IW1_249411.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S01SSMOSW_20180525T020614_0025_B020_S000_5464A_VV.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S01SSMOWI_20180525T020614_0025_B020_S000_5464A_VV.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S01SSMRVL_20180525T020614_0025_B020_S000_5464A_VV.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S01SWVSLC_20240512T072749_0012_A51464_S2D1_001.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S02MSIL0P_20240403T000000_0001_A123_T000.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S02MSIL0P_20240527T000000_0001_A123_T000.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S02MSIL0__20230216T182840_0001_A123_T000.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S02MSIL1A_20240403T000000_0001_A123_T000.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S02MSIL1B_20240403T000000_0001_A123_T000.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S02MSIL1C_20230629T063559_0000_A064_T3A5.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S02MSIL1C_20240319T122830_0123_B108_T000.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S02MSIL2A_20230629T120347_0000_A064_TC64.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S02MSIL2A_20240319T131110_0123_B108_T000.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03ALTL0__20240402T000237_0599_A372_T446.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03DORDOP_20240110T112733_5992_A351_T128.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03DORNAV_20240110T112733_5992_A351_T128.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03GNSL0__20240110T112732_5993_A351_T745.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03HKM2L0_20231220T002043_6142_A045_T197.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03HKML0__20231220T002042_6143_A045_T434.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03MWRL0__20221101T092439_6037_A307_T745.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03NATL0__20231220T020306_6154_A046__268.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03OLCCR0_20220511T202327_0045_A142_T432.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03OLCCR1_20220511T202327_0045_A142_T432.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03OLCEFR_20230506T015316_0180_B117_T883.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03OLCERR_20230506T015316_0179_B117_T883.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03OLCL0__20210629T044945_0119_A247_T885.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03OLCLFR_20191227T124111_0179_A109_T883.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03SLSFRP_20191227T131711_0180_A109_T883.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03SLSFRP_20200908T182648_0179_A298_S883.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03SLSL0__20221101T204936_0299_A314_T568.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03SLSLST_20191227T124111_0179_A109_T883.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03SLSRBT_20230315T095847_0179_B150_S883.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03SRCRL0_20240402T010212_0014_A373_T930.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03SYNAOD_20191227T124211_0060_A109_T883.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03SYNSDR_20191227T124211_0059_A109_T883.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03SYNV10_20231221T000000_0000_A000_S883.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03SYNVG1_20231221T000000_0000_A000_S883.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03SYNVGK_20191227T124211_0059_A109_T883.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S03SYNVGP_20191227T124211_0059_A109_T883.zarr.zip",
    "https://eopf-public.s3.sbg.perf.cloud.ovh.net/eoproducts/S2MSIL1C_20231001T094031_N0509_R036_T33RUJ_T345.zarr.zip"
  ))
}
