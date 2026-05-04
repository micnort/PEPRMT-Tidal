# Plotting outputs

library(tidyverse)
library(wacolors)


cesm_ssp585_peprmt<-read_csv('cesm_ssp585_results.csv')


p_daily_methane <- cesm_ssp585_peprmt %>% ggplot(aes(x = step_no, y = CH4_mod,
                                                     color = site_char))+
  geom_line()+
  theme_bw()+
  facet_wrap(~site_char, nrow = 5, ncol = 1)
p_daily_methane

p_daily_GPP <- cesm_ssp585_peprmt %>% ggplot(aes(x = step_no, y = GPP_mod,
                                                     color = site_char))+
  geom_line()+
  theme_bw()+
  facet_wrap(~site_char, nrow = 5, ncol = 1)
p_daily_GPP

p_daily_reco <- cesm_ssp585_peprmt %>% ggplot(aes(x = step_no, y = Reco_mod,
                                                     color = site_char))+
  geom_line()+
  theme_bw()+
  facet_wrap(~site_char, nrow = 5, ncol = 1)
p_daily_reco

p_daily_npp <- cesm_ssp585_peprmt %>% ggplot(aes(x = step_no, y = NEE_mod,
                                                     color = site_char))+
  geom_line()+
  theme_bw()+
  facet_wrap(~site_char, nrow = 5, ncol = 1)+
  scale_color_brewer(palette = 'Set1')
p_daily_npp

p_daily_temps <- cesm_ssp585_peprmt %>% ggplot(aes(x = step_no, y = tempC,
                                               color = site_char))+
  geom_line(linewidth = )+
  theme_bw()+
  facet_wrap(~site, nrow = 5, ncol = 1)
p_daily_temps


annual_totals <- cesm_ssp585_peprmt %>% group_by(yr, site_char) %>%
  summarize(CH4_tot = sum(CH4_mod),
            GPP_tot = sum(GPP_mod),
            NEE_tot = sum(NEE_mod),
            Reco_tot = sum(Reco_mod),
            avg_temp = mean(tempC))

p_annual_ch4<- annual_totals %>% 
  ggplot(aes(x = yr, y = (CH4_tot/12)*16.04, color = site_char))+
  geom_line(linewidth = 1.5)+
  theme_bw()+
  labs(color = 'site')+
  scale_color_brewer(palette = 'Set1')+
  xlab('Year')+
  ylab('Annual Methane Emissions g/m2')+
  ggtitle('Methane Emission Projections SSP585')
  
p_annual_ch4

ggsave('p_annual_methane.png', p_annual_ch4)

p_annual_nee <- annual_totals %>% 
  ggplot(aes(x = yr, y = (NEE_tot*3.67)/1000,  color = site_char))+
  geom_line(linewidth = 1.5)+
  theme_bw()+
  scale_color_brewer(palette = 'Set1')+
  labs(color = 'Site')+
  xlab('Year')+
  ylab('Net CO2 Exchange (kg/m2/yr)')+
  ggtitle('Projected Net CO2 Exchange SSP 585')
p_annual_nee

ggsave('p_annual_nee.png', p_annual_nee)

p_annual_reco <- annual_totals %>% ggplot(aes(x = yr, y = (Reco_tot*3.67)/1000, 
                                             color = site_char))+
  geom_line(linewidth = 2)+
  scale_color_brewer(palette = 'Set1')+
  theme_bw()+
  labs(color = 'Site')+
  xlab('Year')+
  ylab('Annual CO2 Emissions (kg/m2)')+
  ggtitle('Respiration-Derived CO2 Emissions')
p_annual_reco

ggsave('p_annual_reco.png', plot = p_annual_reco)

p_annual_temp <- annual_totals %>% ggplot(aes(x = yr, y = avg_temp,
                                              color = site_char))+
  geom_line(linewidth = 1)+
  theme_bw()+
  scale_color_brewer(palette = 'Set1')+
  labs(color = 'Site')+
  xlab('Year')+
  ylab('Annual Average Temperature (celsius)')+
  ggtitle('Temperature Projections by Site')
  
p_annual_temp

ggsave('p_annual_temp.png', plot = p_annual_temp)


### Radiative Forcing 

STJ <- cesm_ssp585_peprmt %>% dplyr::filter(site_char == 'US_STJ')
STJ$m_ch4_c <- 0

for(i in 1:length(STJ$step_no)){
  if(i == 1){
    print('here')
    STJ$m_ch4_c[i]<-(STJ$CH4_mod[i]/1000)*(1/365)+
      (STJ$m_ch4_c[i]*exp((-1/365)/12.4)) 
  }else{
  print('here')
  STJ$m_ch4_c[i]<-(STJ$CH4_mod[i]/1000)*(1/365)+
    (STJ$m_ch4_c[i-1]*exp((-1/365)/12.4))
  }
}

STJ$RF<-STJ$m_ch4_c*(1.28*10**-13)

p_STJ_rf <-STJ %>% ggplot(aes(x = step_no, y = RF))+
  geom_line(color = 'red', linewidth = 1.5)+
  theme_bw()+
  xlab('Day of Simulation')+
  ylab('Radiative Forcing (W/m2')+
  ggtitle('Radiative Forcing Derived from Methane Emissions at Site STJ')
p_STJ_rf

ggsave('p_STJ_RF.png', p_STJ_rf, height = 6, width = 14, 
       units = 'in')

EDN<-cesm_ssp585_peprmt %>%dplyr::filter(site_char=='US_EDN')

plot(EDN$S1~EDN$step_no)
