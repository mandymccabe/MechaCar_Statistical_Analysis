#Deliverable 1

library(dplyr)
mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data =mpg_df)
summary(Mecha_lm)

# Deliverable 2

coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- summarize(coil_df, mean(PSI),median(PSI),var(PSI),sd(PSI))
lot_summary <- group_by(coil_df,Manufacturing_Lot)
lot_summary_df <- summarize(lot_summary, mean(PSI),median(PSI),var(PSI),sd(PSI))

# Deliverable 3

t.test((coil_df$PSI), mu = 1500)
t.test(subset(coil_df, Manufacturing_Lot=='Lot1')$PSI, mu=1500)
t.test(subset(coil_df, Manufacturing_Lot=='Lot2')$PSI, mu=1500)
t.test(subset(coil_df, Manufacturing_Lot=='Lot3')$PSI, mu=1500)
