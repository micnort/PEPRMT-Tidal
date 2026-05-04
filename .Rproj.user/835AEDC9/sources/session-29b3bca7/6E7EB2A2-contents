#PEPRMT_TIDAL - Climate Projectinos
# Michael Norton 
# April 26, 2026


library(tidyverse)

#mean annual cycle data
annual_cycles <- read.csv('site_data_doy_avgs.csv', header = TRUE)

# Read in Model Temperatures

#CESM2 SSP 585
cesm585_temps_STJ <- read_csv('STJ_cesm2_ssp585_df.csv')
cesm585_temps_STJ$step_no<-1:nrow(cesm585_temps_STJ)
cesm585_temps_STJ$site <- 3
#cesm585_temps_NE <- read_csv('NE_cesm2_ssp585_df.csv')
#cesm585_temps_NE$step_no<-1:nrow(cesm585_temps_NE)
#cesm585_temps_NE$site <- 5
cesm585_temps_LA1 <- read_csv('LA1_cesm2_ssp585_df.csv')
cesm585_temps_LA1$step_no<-1:nrow(cesm585_temps_LA1)
cesm585_temps_LA1$site <- 4
cesm585_temps_EDN <- read_csv('EDN_cesm2_ssp585_df.csv')
cesm585_temps_EDN$step_no<-1:nrow(cesm585_temps_EDN)
cesm585_temps_EDN$site <- 1
cesm585_temps_SRR <- read_csv('SRR_cesm2_ssp585_df.csv')
cesm585_temps_SRR$step_no<-1:nrow(cesm585_temps_SRR)
cesm585_temps_SRR$site <- 2

cesm_ssp585 <- rbind(cesm585_temps_EDN, cesm585_temps_LA1, #cesm585_temps_NE,
                     cesm585_temps_SRR, cesm585_temps_STJ)

#CESM2 SSP 245

cesm245_temps_STJ <- read_csv('STJ_cesm2_ssp245_df.csv')
cesm245_temps_STJ$step_no<-1:nrow(cesm245_temps_STJ)
cesm245_temps_STJ$site <- 3
#cesm245_temps_NE <- read_csv('NE_cesm2_ssp245_df.csv')
#cesm245_temps_NE$step_no<-1:nrow(cesm245_temps_NE)
#cesm245_temps_NE$site <- 5
cesm245_temps_LA1 <- read_csv('LA1_cesm2_ssp245_df.csv')
cesm245_temps_LA1$step_no<-1:nrow(cesm245_temps_LA1)
cesm245_temps_LA1$site <- 4
cesm245_temps_EDN <- read_csv('EDN_cesm2_ssp245_df.csv')
cesm245_temps_EDN$step_no<-1:nrow(cesm245_temps_EDN)
cesm245_temps_EDN$site <- 1
cesm245_temps_SRR <- read_csv('SRR_cesm2_ssp245_df.csv')
cesm245_temps_SRR$step_no<-1:nrow(cesm245_temps_SRR)
cesm245_temps_SRR$site <- 2

cesm_ssp245 <- rbind(cesm245_temps_EDN, cesm245_temps_LA1, #cesm245_temps_NE,
                     cesm245_temps_SRR, cesm245_temps_STJ)

#CESM2 SSP 126
cesm126_temps_STJ <- read_csv('STJ_cesm2_ssp126_df.csv')
cesm126_temps_STJ$step_no<-1:nrow(cesm126_temps_STJ)
cesm126_temps_STJ$site <- 3
#cesm126_temps_NE <- read_csv('NE_cesm2_ssp126_df.csv')
#cesm126_temps_NE$step_no<-1:nrow(cesm126_temps_NE)
#cesm126_temps_NE$site <- 5
cesm126_temps_LA1 <- read_csv('LA1_cesm2_ssp126_df.csv')
cesm126_temps_LA1$step_no<-1:nrow(cesm126_temps_LA1)
cesm126_temps_LA1$site <- 4
cesm126_temps_EDN <- read_csv('EDN_cesm2_ssp126_df.csv')
cesm126_temps_EDN$step_no<-1:nrow(cesm126_temps_EDN)
cesm126_temps_EDN$site <- 1
cesm126_temps_SRR <- read_csv('SRR_cesm2_ssp126_df.csv')
cesm126_temps_SRR$step_no<-1:nrow(cesm126_temps_SRR)
cesm126_temps_SRR$site <- 2

cesm_ssp126 <- rbind(cesm126_temps_EDN, cesm126_temps_LA1, #cesm126_temps_NE,
                     cesm126_temps_SRR, cesm126_temps_STJ)


# HADGEM3 SSP 585

hadgem3_585_temps_STJ <- read_csv('STJ_hadgem3_ssp585_df.csv')
hadgem3_585_temps_STJ$step_no<-1:nrow(hadgem3_585_temps_STJ)
hadgem3_585_temps_STJ$site <- 3
#hadgem3_585_temps_NE <- read_csv('NE_hadgem3_ssp585_df.csv')
#hadgem3_585_temps_NE$step_no<-1:nrow(hadgem3_585_temps_NE)
#hadgem3_585_temps_NE$site <- 5
hadgem3_585_temps_LA1 <- read_csv('LA1_hadgem3_ssp585_df.csv')
hadgem3_585_temps_LA1$step_no<-1:nrow(hadgem3_585_temps_LA1)
hadgem3_585_temps_LA1$site <- 4
hadgem3_585_temps_EDN <- read_csv('EDN_hadgem3_ssp585_df.csv')
hadgem3_585_temps_EDN$step_no<-1:nrow(hadgem3_585_temps_EDN)
hadgem3_585_temps_EDN$site <- 1
hadgem3_585_temps_SRR <- read_csv('SRR_hadgem3_ssp585_df.csv')
hadgem3_585_temps_SRR$step_no<-1:nrow(hadgem3_585_temps_SRR)
hadgem3_585_temps_SRR$site <- 2

hadgem3_585 <- rbind(hadgem3_585_temps_EDN, hadgem3_585_temps_LA1, #hadgem3_585_temps_NE,
                     hadgem3_585_temps_SRR, hadgem3_585_temps_STJ)

#HadGem SSP 245
hadgem3_245_temps_STJ <- read_csv('STJ_hadgem3_ssp245_df.csv')
hadgem3_245_temps_STJ$step_no<-1:nrow(hadgem3_245_temps_STJ)
hadgem3_245_temps_STJ$site <- 3
#hadgem3_245_temps_NE <- read_csv('NE_hadgem3_ssp245_df.csv')
#hadgem3_245_temps_NE$step_no<-1:nrow(hadgem3_245_temps_NE)
#hadgem3_245_temps_NE$site <- 5
hadgem3_245_temps_LA1 <- read_csv('LA1_hadgem3_ssp245_df.csv')
hadgem3_245_temps_LA1$step_no<-1:nrow(hadgem3_245_temps_LA1)
hadgem3_245_temps_LA1$site <- 4
hadgem3_245_temps_EDN <- read_csv('EDN_hadgem3_ssp245_df.csv')
hadgem3_245_temps_EDN$step_no<-1:nrow(hadgem3_245_temps_EDN)
hadgem3_245_temps_EDN$site <- 1
hadgem3_245_temps_SRR <- read_csv('SRR_hadgem3_ssp245_df.csv')
hadgem3_245_temps_SRR$step_no<-1:nrow(hadgem3_245_temps_SRR)
hadgem3_245_temps_SRR$site <- 2

hadgem3_245 <- rbind(hadgem3_245_temps_EDN, hadgem3_245_temps_LA1, #hadgem3_245_temps_NE,
                     hadgem3_245_temps_SRR, hadgem3_245_temps_STJ)

hadgem3_126_temps_STJ <- read_csv('STJ_hadgem3_ssp126_df.csv')
hadgem3_126_temps_STJ$step_no<-1:nrow(hadgem3_126_temps_STJ)
hadgem3_126_temps_STJ$site <- 3
#hadgem3_126_temps_NE <- read_csv('NE_hadgem3_ssp126_df.csv')
#hadgem3_126_temps_NE$step_no<-1:nrow(hadgem3_126_temps_NE)
#hadgem3_126_temps_NE$site <- 5
hadgem3_126_temps_LA1 <- read_csv('LA1_hadgem3_ssp126_df.csv')
hadgem3_126_temps_LA1$step_no<-1:nrow(hadgem3_126_temps_LA1)
hadgem3_126_temps_LA1$site <- 4
hadgem3_126_temps_EDN <- read_csv('EDN_hadgem3_ssp126_df.csv')
hadgem3_126_temps_EDN$step_no<-1:nrow(hadgem3_126_temps_EDN)
hadgem3_126_temps_EDN$site <- 1
hadgem3_126_temps_SRR <- read_csv('SRR_hadgem3_ssp126_df.csv')
hadgem3_126_temps_SRR$step_no<-1:nrow(hadgem3_126_temps_SRR)
hadgem3_126_temps_SRR$site <- 2

hadgem3_126 <- rbind(hadgem3_126_temps_EDN, hadgem3_126_temps_LA1, #hadgem3_126_temps_NE,
                     hadgem3_126_temps_SRR, hadgem3_126_temps_STJ)

#GFDL ESM4

gfdl_esm4_585_temps_STJ <- read_csv('STJ_gfdl_esm4_ssp585_df.csv')
gfdl_esm4_585_temps_STJ$step_no<-1:nrow(gfdl_esm4_585_temps_STJ)
gfdl_esm4_585_temps_STJ$site <- 3
#gfdl_esm4_585_temps_NE <- read_csv('NE_gfdl_esm4_ssp585_df.csv')
#gfdl_esm4_585_temps_NE$step_no<-1:nrow(gfdl_esm4_585_temps_NE)
#gfdl_esm4_585_temps_NE$site <- 5
gfdl_esm4_585_temps_LA1 <- read_csv('LA1_gfdl_esm4_ssp585_df.csv')
gfdl_esm4_585_temps_LA1$step_no<-1:nrow(gfdl_esm4_585_temps_LA1)
gfdl_esm4_585_temps_LA1$site <- 4
gfdl_esm4_585_temps_EDN <- read_csv('EDN_gfdl_esm4_ssp585_df.csv')
gfdl_esm4_585_temps_EDN$step_no<-1:nrow(gfdl_esm4_585_temps_EDN)
gfdl_esm4_585_temps_EDN$site <- 1
gfdl_esm4_585_temps_SRR <- read_csv('SRR_gfdl_esm4_ssp585_df.csv')
gfdl_esm4_585_temps_SRR$step_no<-1:nrow(gfdl_esm4_585_temps_SRR)
gfdl_esm4_585_temps_SRR$site <- 2

gfdl_esm4_585 <- rbind(gfdl_esm4_585_temps_EDN, gfdl_esm4_585_temps_LA1, #gfdl_esm4_585_temps_NE,
                     gfdl_esm4_585_temps_SRR, gfdl_esm4_585_temps_STJ)

#GFDL ESM4

gfdl_esm4_245_temps_STJ <- read_csv('STJ_gfdl_esm4_ssp245_df.csv')
gfdl_esm4_245_temps_STJ$step_no<-1:nrow(gfdl_esm4_245_temps_STJ)
gfdl_esm4_245_temps_STJ$site <- 3
#gfdl_esm4_245_temps_NE <- read_csv('NE_gfdl_esm4_ssp245_df.csv')
#gfdl_esm4_245_temps_NE$step_no<-1:nrow(gfdl_esm4_245_temps_NE)
#gfdl_esm4_245_temps_NE$site <- 5
gfdl_esm4_245_temps_LA1 <- read_csv('LA1_gfdl_esm4_ssp245_df.csv')
gfdl_esm4_245_temps_LA1$step_no<-1:nrow(gfdl_esm4_245_temps_LA1)
gfdl_esm4_245_temps_LA1$site <- 4
gfdl_esm4_245_temps_EDN <- read_csv('EDN_gfdl_esm4_ssp245_df.csv')
gfdl_esm4_245_temps_EDN$step_no<-1:nrow(gfdl_esm4_245_temps_EDN)
gfdl_esm4_245_temps_EDN$site <- 1
gfdl_esm4_245_temps_SRR <- read_csv('SRR_gfdl_esm4_ssp245_df.csv')
gfdl_esm4_245_temps_SRR$step_no<-1:nrow(gfdl_esm4_245_temps_SRR)
gfdl_esm4_245_temps_SRR$site <- 2

gfdl_esm4_245 <- rbind(gfdl_esm4_245_temps_EDN, gfdl_esm4_245_temps_LA1, #gfdl_esm4_245_temps_NE,
                       gfdl_esm4_245_temps_SRR, gfdl_esm4_245_temps_STJ)

gfdl_esm4_126_temps_STJ <- read_csv('STJ_gfdl_esm4_ssp126_df.csv')
gfdl_esm4_126_temps_STJ$step_no<-1:nrow(gfdl_esm4_126_temps_STJ)
gfdl_esm4_126_temps_STJ$site <- 3
#gfdl_esm4_126_temps_NE <- read_csv('NE_gfdl_esm4_ssp126_df.csv')
#gfdl_esm4_126_temps_NE$step_no<-1:nrow(gfdl_esm4_126_temps_NE)
#gfdl_esm4_126_temps_NE$site <- 5
gfdl_esm4_126_temps_LA1 <- read_csv('LA1_gfdl_esm4_ssp126_df.csv')
gfdl_esm4_126_temps_LA1$step_no<-1:nrow(gfdl_esm4_126_temps_LA1)
gfdl_esm4_126_temps_LA1$site <- 4
gfdl_esm4_126_temps_EDN <- read_csv('EDN_gfdl_esm4_ssp126_df.csv')
gfdl_esm4_126_temps_EDN$step_no<-1:nrow(gfdl_esm4_126_temps_EDN)
gfdl_esm4_126_temps_EDN$site <- 1
gfdl_esm4_126_temps_SRR <- read_csv('SRR_gfdl_esm4_ssp126_df.csv')
gfdl_esm4_126_temps_SRR$step_no<-1:nrow(gfdl_esm4_126_temps_SRR)
gfdl_esm4_126_temps_SRR$site <- 2

gfdl_esm4_126 <- rbind(gfdl_esm4_126_temps_EDN, gfdl_esm4_126_temps_LA1, #gfdl_esm4_126_temps_NE,
                       gfdl_esm4_126_temps_SRR, gfdl_esm4_126_temps_STJ)

map_annual_cycles <-function(df_daily, df_annual){
  for (i in 1:length(df_annual$DOY_disc)){
    for(j in 1:length(df_daily$doy))
      if (df_annual$site[i] == df_daily$site[j]){
          if(df_annual$DOY_disc[i] == df_daily$doy[j]){
            df_daily$site_char[j] <- df_annual$site_char[i]
            df_daily$wtd[j] <- df_annual$wtd[i]
            df_daily$par[j]<-df_annual$par[i]
            df_daily$lai[j]<-0
            df_daily$gi[j]<-df_annual$evi[i]
            df_daily$fpar[j] <- df_annual$fpar[i]
            df_daily$lue[j] <- df_annual$lue[i]
            df_daily$wetland_age[j] <- 9999 #don't care about restoration here
            df_daily$salinity[j] <- df_annual$salinity[i]
            df_daily$nitrate[j] <- df_annual$nitrate[i]
            df_daily$som[j] <- 0 
        }
      }
  }
  df_daily <- df_daily %>%relocate(step_no)
  df_daily <- df_daily %>%relocate(doy, .after = step_no)
  df_daily <- df_daily %>%relocate(yr, .after = doy)
  df_daily <- df_daily %>%relocate(wtd, .after = tempC)
  df_daily <- df_daily %>%relocate(site, .after = som)
  df_daily <- df_daily %>%relocate(site_char, .after = site)
  return(df_daily)
}

# map to specific models
#cesm_ssp585<-map_annual_cycles(cesm_ssp585, annual_cycles)
cesm_ssp245<-map_annual_cycles(cesm_ssp245, annual_cycles)
cesm_ssp126<-map_annual_cycles(cesm_ssp126, annual_cycles)
 # this takes a long time to run, commenting out when done so I don't have to do 
# it again

#hadgem3_585<-map_annual_cycles(hadgem3_585, annual_cycles)
#hadgem3_245<-map_annual_cycles(hadgem3_245, annual_cycles)
#hadgem3_126<-map_annual_cycles(hadgem3_126, annual_cycles)

#gfdl_esm4_585<-map_annual_cycles(gfdl_esm4_585, annual_cycles)
#gfdl_esm4_245<-map_annual_cycles(gfdl_esm4_245, annual_cycles)
gfdl_esm4_126<-map_annual_cycles(gfdl_esm4_126, annual_cycles)
# parameterize som, keep standard w/o running MEM

parameterize_som<-function(df){
  for(i in 1:length(df$doy)){
    if (df$doy[i]==1){
      if (df$site_char[i]=='US_STJ'){
        df$som[i] <- 889.0917
      } 
      else if(df$site_char[i]=='US_PLM'){
        df$som[i] <- 318.088
      }
      else if(df$site_char[i]=='US_EDN'){
        df$som[i] <- 526.4764
      }
      else if(df$site_char[i]=='US_SRR'){
        df$som[i] <- 1857.952
      }
      else if(df$site_char[i]=='US_LA1'){
        df$som[i] <- 768.0885
      }
    }
  }
  return(df)
}

cesm_ssp585<-parameterize_som(cesm_ssp585)
cesm_ssp245<-parameterize_som(cesm_ssp245)
cesm_ssp126<-parameterize_som(cesm_ssp126)

#hadgem3_585<-parameterize_som(hadgem3_585)
#hadgem3_245<-parameterize_som(hadgem3_245)
#hadgem3_126<-parameterize_som(hadgem3_126)

#gfdl_esm4_585<-parameterize_som(gfdl_esm4_585)
#gfdl_esm4_245<-parameterize_som(gfdl_esm4_245)
gfdl_esm4_126<-parameterize_som(gfdl_esm4_126)
write_csv(cesm_ssp585, "cesm_ssp585_parameters.csv")
write_csv(cesm_ssp245, "cesm_ssp245_parameters.csv")
write_csv(cesm_ssp126, 'cesm_ssp126_parameters.csv')

#write_csv(hadgem3_585, 'hadgem3_ssp585_parameters.csv')
#write_csv(hadgem3_245, 'hadgem3_ssp245_parameters.csv')
#write_csv(hadgem3_126, 'hadgem3_ssp126_parameters.csv')

#write_csv(gfdl_esm4_585, 'gfdl_esm4_ssp585_parameters.csv')
#write_csv(gfdl_esm4_245, 'gfdl_esm4_ssp245_parameters.csv')
write_csv(gfdl_esm4_126, 'gfdl_esm4_ssp126_parameters.csv')
