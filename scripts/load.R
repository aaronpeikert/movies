library(tidyverse)
library(here)
#----load----
whats_here <- function(dir){
  paths <- here::here(dir, list.files(here(dir)))
  names(paths) <- dir %>% here() %>% list.files() %>% str_split("\\.") %>% map_chr(1)
  return(paths)
}
specs <- spec_csv(here("data", "2000.csv"))
movies <- whats_here("data") %>% map_dfr(read_csv, col_types = specs)
