library(tidyverse)

data <- read_csv('All_sites_master.csv')


site_doy <- data %>% group_by(DOY_disc, site, site_char)%>%
  summarize(salinity = mean(Salinity_daily_ave_ppt, na.rm = T),
            wtd = mean(WTD_cm, na.rm = T),
            wtd_sd = sd(WTD_cm, na.rm = T),
            nitrate = mean(NO3_mg_L, na.rm = T),
            fpar = mean(FPAR, na.rm = T),
            lue = mean(LUE, na.rm = T),
            evi = mean(EVI, na.rm = T),
            par = mean(PAR_umol_m2_day, na.rm = T))

# what does this look like

p_mean_annual_sal <- site_doy %>%ggplot()+
  geom_line(aes(x = DOY_disc, y = salinity, color = site_char))+
  theme_bw()
p_mean_annual_sal
#incomplete coverage at some sites, for these sites use mean?

p_mean_annual_wtd <-  site_doy %>%ggplot()+
  geom_line(aes(x = DOY_disc, y = wtd, color = site_char))+
  theme_bw()
p_mean_annual_wtd
#weird outliers where there is only one year of coverage

#max(site_doy$wtd)
#site_doy$DOY_disc[which(site_doy$wtd==max(site_doy$wtd))]


p_mean_annual_nitrate  <-  site_doy %>%ggplot()+
  geom_line(aes(x = DOY_disc, y = nitrate, color = site_char))+
  theme_bw()
p_mean_annual_nitrate
#mostly just mean values, probably use mean to run model

p_mean_annual_lue  <-  site_doy %>%ggplot()+
  geom_line(aes(x = DOY_disc, y = lue, color = site_char))+
  theme_bw()
p_mean_annual_lue


#just mean values here

write_csv(site_doy, 'site_data_doy_avgs.csv')

