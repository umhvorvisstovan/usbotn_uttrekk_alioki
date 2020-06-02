# hetta scripti skal bara koyrast einaferð

# installera neyðugu r-pakkarnar

#packages required
uttrekk_pack <- c("tidyverse", "lubridate", "shiny", "odbc", "knitr", "kableExtra",
                  "ggforce", "ggpubr", "ggrepel", "usethis", "sf")
mangla <- uttrekk_pack[!uttrekk_pack %in% installed.packages()[,"Package"]]
install.packages(mangla)

# set up localan .Renviron fíl við databasu upplýsingum og brúkara upplýsingum
usethis::edit_r_environ("project")
Sys.setenv(SERVER = rstudioapi::showPrompt(title = "Server", message = "Server navn:", default = ""))
Sys.setenv(DATABASE = rstudioapi::showPrompt(title = "Database", message = "Database navn:", default = ""))
Sys.setenv(USER = rstudioapi::showPrompt("Database username", "username"))
Sys.setenv(PASSWORD = rstudioapi::askForPassword("Database password"))