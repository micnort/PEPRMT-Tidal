library(tidyverse) 

#load model functions
source('PEPRMT_GPP_FINAL.R')
source('PEPRMT_Reco_FINAL.R')
source('PEPRMT_CH4_FINAL.R')

#Read model data files
# for now comment out when done
#cesm2_ssp585 <- read_csv('cesm_ssp585_parameters.csv')
cesm2_ssp245 <- read_csv('cesm_ssp245_parameters.csv')
cesm2_ssp126<- read_csv('cesm_ssp126_parameters.csv')
#hadgem3_ssp585 <- read_csv('hadgem3_ssp585_parameters.csv')
#hadgem3_ssp245 <- read_csv('hadgem3_ssp245_parameters.csv')
#hadgem3_ssp_126 <- read_csv('hadgem3_ssp126_parameters.csv')

#gfdl_esm4_ssp585 <- read_csv('gfdl_esm4_ssp585_parameters.csv')
#gfdl_esm4_ssp245 <- read_csv('gfdl_esm4_ssp245_parameters.csv')
gfdl_esm4_ssp126 <- read_csv('gfdl_esm4_ssp126_parameters.csv')

#define a function to run the model

run_peprmt_tidal<- function(df_params, df_results){
  #GPP Module
  GPP_theta <- c(0.7479271,   1.0497113, 149.4681710,  94.4532674 )
  GPP_mod <- PEPRMT_GPP_final(GPP_theta,
                            data = df_params)

  df_results<-df_params
  df_results$GPP_mod <- GPP_mod$GPP

  df_params[,16]<-GPP_mod$GPP

  #Reco Module
  Reco_theta <- c(18.41329, 1487.65701,   11.65972,   61.29611 )
  Reco_mod <- PEPRMT_Reco_FINAL(Reco_theta,
                              data = df_params,
                              wetland_type=2)

  df_results$Reco_mod <- Reco_mod$Reco_full
  df_results$NEE_mod <- Reco_mod$NEE_mod
  df_results$S1 <- Reco_mod$S1
  df_results$S2<-Reco_mod$S2

  df_params[,17]<-Reco_mod$S1
  df_params[,18]<-Reco_mod$S2

  #CH4 Module
  CH4_theta<- c( 14.9025078, 0.4644174, 16.7845002, 0.4359649, 15.8857612,0.5120464, 486.4106939, 0.1020278 )
  CH4_mod <- PEPRMT_CH4_FINAL(CH4_theta,
                            data = df_params,
                            wetland_type=2)

  df_results$CH4_mod <- CH4_mod$pulse_emission_total
  df_results$plant_trans<-CH4_mod$Plant_flux_net
  df_results$hydro_flux<-CH4_mod$Hydro_flux
  df_results$m1<-CH4_mod$M1
  df_results$m2<-CH4_mod$M2
  df_results$trans2<-CH4_mod$trans2

  return(df_results)
}


# Run with CESM2 Model Scenarios
cesm2_ssp585_results <- tibble()
cesm2_ssp585_results <- run_peprmt_tidal(cesm2_ssp585, cesm2_ssp585_results)
write_csv(cesm2_ssp585_results, 'outputs/cesm2_ssp585_results.csv')

cesm2_ssp245_results <- tibble()
cesm2_ssp245_results <- run_peprmt_tidal(cesm2_ssp245, cesm2_ssp245_results)
write_csv(cesm2_ssp245_results, 'outputs/cesm2_ssp245_results.csv')

cesm2_ssp126_results<-tibble()
cesm2_ssp126_results <- run_peprmt_tidal(cesm2_ssp126, cesm2_ssp126_results)
write_csv(cesm2_ssp126_results, 'outputs/cesm2_ssp126_results.csv')

#Run with HadGem3 Model Scenarios
#hadgem3_585_results<-tibble()
#hadgem3_585_results <- run_peprmt_tidal(hadgem3_ssp585)
#write_csv(hadgem3_585_results, 'hadgem3_ssp585_results.csv')

#hadgem3_245_results<-tibble()
#hadgem3_245_results <- run_peprmt_tidal(hadgem3_ssp245)
#write_csv(hadgem3_245_results, 'hadgem3_ssp245_results.csv')

#hadgem3_126_results <- tibble()
#hadgem3_126_results <- run_peprmt_tidal(hadgem3_ssp_126)
#write_csv(hadgem3_126_results, 'hadgem3_ssp126_results.csv')

# Run with NOAA GFDL Model Scenarios
#gfdl_esm4_ssp585_results<-tibble()
#gfdl_esm4_ssp585_results<-run_peprmt_tidal(gfdl_esm4_ssp585)
#write_csv(gfdl_esm4_ssp585_results, 'gfdl_ssp585_results.csv')

#gfdl_esm4_ssp245_results<-tibble()
#gfdl_esm4_ssp245_results<-run_peprmt_tidal(gfdl_esm4_ssp245)
#write_csv(gfdl_esm4_ssp245_results, 'gfdl_ssp245_results.csv')

gfdl_esm4_ssp126_results<-tibble()
gfdl_esm4_ssp126_results<-run_peprmt_tidal(gfdl_esm4_ssp126)
write_csv(gfdl_esm4_ssp126_results, 'gfdl_ssp126_results.csv')
