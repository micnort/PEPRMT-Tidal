# Model comparison plotting

library(tidyverse)


outfile_names <- list.files('outputs')
peprmt_cmip <- tibble()
for(i in 1:length(outfile_names)){
  curr <- read_csv(paste('outputs/', outfile_names[i], sep = ''))
  curr$Model<-sub('_.*', '', outfile_names[i])
  curr$scenario<-gsub(".*_(.+)_.*", "\\1", outfile_names[i])
  peprmt_cmip <- rbind(curr, peprmt_cmip)
}

peprmt_cmip_annual <- peprmt_cmip %>% group_by(site, yr, Model, scenario) %>%
  summarize(total_CH4 = sum(hydro_flux, na.rm = T), 
            mean_temp = mean(tempC, na.rm = T))

annual_plot<- peprmt_cmip_annual %>% 
  #dplyr::filter(scenario == 'ssp585')%>%
  ggplot(aes(x = yr, y = total_CH4, color = Model, linetype = scenario))+
  geom_line()+
  theme_bw()+
  facet_grid(~site)
annual_plot

