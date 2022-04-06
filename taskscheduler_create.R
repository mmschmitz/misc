#install packages (only taskscheduleR needed here)
list.of.install.packages <- c('taskscheduleR')
list.of.used.packages <- list.of.install.packages
new.packages <- list.of.install.packages[!(list.of.install.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)>0){install.packages(new.packages)}
lapply(list.of.used.packages, library, character.only = TRUE)

###########################

# CRONJOB IMPLEMENTATION? #----

###########################

#SETUP PARAMS: # https://rdrr.io/cran/taskscheduleR/man/taskscheduler_create.html - SETUP
# schedule = c("ONCE", "MONTHLY", "WEEKLY", "DAILY", "HOURLY", "MINUTE", "ONLOGON","ONIDLE"),
runon_date <- "03/30/2022" #this is the FIRST DATE that you want the cron job to be implemented
runon_time <- "08:00:00"
schedule_when <- "DAILY"

########################----

myscript <- [FULL R SCRIPT PATH HERE]

taskscheduler_create(

taskname = basename(myscript),
myscript,
schedule = schedule_when,
starttime = runon_time,
startdate = runon_date
# debug = TRUE
)
