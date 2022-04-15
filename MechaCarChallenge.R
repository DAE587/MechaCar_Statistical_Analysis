#load packages
  library(dplyr)
  library(tidyverse)
  
  ### Deliverable 1 ###
  
  #Import and read the csv file
  mecha_car_MPG_data <- read.csv(file='MechaCar_mpg.csv')
  
  #linear regression for all variables
  lm(mpg ~ vehicle_weight + 
       spoiler_angle + ground_clearance + AWD + vehicle_length,data=mecha_car_MPG_data)
  
  #p-value and r-squared  for all variables
  summary(lm(mpg ~ vehicle_weight + 
               spoiler_angle + ground_clearance + AWD + vehicle_length,data=mecha_car_MPG_data))
  
  
  ### Deliverable 2 ###
  # import Suspension_Coil file
  suspension_coil <- read.csv('Suspension_Coil.csv')
  
  # Find mean, median, variance, and standard deviation of PSI 
  total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), 
                                                 Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
  
  # Find mean, median, variance, and standard deviation of PSI for each lot
  lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% 
    summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), 
              SD = sd(PSI))
  
  # T-test of all lots and each individual lots and population mean
  t.test(suspension_coil$PSI, mu=1500)
  t.test((subset(suspension_coil, Manufacturing_Lot == "Lot1", 
                 select = PSI)), mu=1500)
  t.test((subset(suspension_coil, Manufacturing_Lot == "Lot2", 
                 select = PSI)), mu = 1500)
  t.test((subset(suspension_coil, Manufacturing_Lot == "Lot3", 
                 select = PSI)), mu = 1500)
  