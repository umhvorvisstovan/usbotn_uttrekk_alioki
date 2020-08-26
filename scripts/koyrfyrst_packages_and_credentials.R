# hetta scripti skal bara koyrast einaferð

# installera neyðugu r-pakkarnar

#packages required
uttrekk_pack <- c("tidyverse", "lubridate", "shiny", "odbc", "DBI", "knitr", "kableExtra",
                  "ggforce", "ggpubr", "ggrepel", "usethis", "sf", "reactable")
mangla <- uttrekk_pack[!uttrekk_pack %in% installed.packages()[,"Package"]]
install.packages(mangla)

# set up localan .Renviron fíl við databasu upplýsingum og brúkara upplýsingum
usethis::edit_r_environ("project")

### --------
# kopiera hetta inn í .Renviron fílin, við tínum upplýsingum
SERVER=navn_ella_ip_adressa_á_servaranum
DATABASE=navn_á_dátugrunni
USER=brúkari
PASSWORD=loyniorð