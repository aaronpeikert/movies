library(tidyverse)
library(here)
#----load----
movies2004 <- read_csv(here("data", "2004.csv"))
movies2005 <- read_csv(here("data", "2005.csv"))
movies <- rbind(movies2004, movies2004)
