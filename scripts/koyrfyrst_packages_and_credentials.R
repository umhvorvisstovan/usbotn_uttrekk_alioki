# hetta scripti skal bara koyrast fyrstu ferð R projectið verður sett upp!!
# fyri at koyra scriptið: trýst á source ovast í høgra horni, ella trýst á crtl + alt + R (allar í senn)



# installera neyðugu r-pakkarnar
# neyðugu pakkarnir
uttrekk_pack <- c("tidyverse", "lubridate", "shiny", "odbc", "DBI", "knitr", "kableExtra",
                  "ggforce", "ggpubr", "ggrepel", "usethis", "sf", "reactable", "rmarkdown",
                  "bookdown")
# pakkar, ið mangla
mangla <- uttrekk_pack[!uttrekk_pack %in% installed.packages()[,"Package"]]
if(length(mangla)>0){install.packages(mangla)}

# set up localan .Renviron fíl við databasu upplýsingum og brúkara upplýsingum
usethis::edit_r_environ("project")


# kopiera hesar niðanfyri fýra reglur inn í .Renviron fílin, ið júst er upprættaður, við tínum upplýsingum.
# "#" teknini skulu ikki verða í .Renviron fílinum

### --------
#SERVER=navn_ella_ip_adressa_á_servaranum
#DATABASE=navn_á_dátugrunni
#USER=brúkari
#PASSWORD=loyniorð
### --------

# goym broytta .Renviron fílin og genstarta R sessiónina!!