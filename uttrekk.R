


#her skrivar tú hvat fyri aliøki tú skal hyggja at
alioki <- "A11"

#her skrivar tú hvussu nógvar útsetur tú skal hyggja at
utsetur <- 3

#her skrivar tú frá hvørjum ári tú ynskir kemiskarkanningar vístar frá í síðstu plottinum
kemi <- 2014

#her skrivar tú frá hvørjum ári tú ynskir djóralívskanningar vístar á plottunum
djorlivyear <- 2006

#her skrivar tú (TRUE/FALSE) um tú ynskir eina interactiva talvu við útroknaðu indexunum
djorlivreactivetable <- TRUE

#her skrivar tú um tú ynskir úttrekkið sum, "pdf" ella "html"
type <- "html"



# trýst so á ctrl + alt + r (allar í senn) so byrjar koyringin
# - tú verður biðin um at inntøppa títt brúkaranavn og loyniorð til postgres tá koyringin byrjar
# hald eyga við console vindeyganum, har koma feilmeldingar um nakrar eru!






#----------
#ikki broyta nakað niðanfyri her!!!!

if(type == "pdf") {
  out <- "bookdown::pdf_document2"
} else if (type == "html") {
  out <- "bookdown::html_document2"
} else {
  stop("Hevur tú skrivað rætt í type? pdf ella html?")
}

if(dir.exists("rapportir") == FALSE) {dir.create("rapportir")}
if(dir.exists("data_output") == FALSE) {dir.create("data_output")}

#packages required
uttrekk_pack <- c("tidyverse", "lubridate", "shiny", "odbc", "knitr", "kableExtra", "ggforce", "ggpubr", "ggrepel")
mangla <- uttrekk_pack[!uttrekk_pack %in% installed.packages()[,"Package"]]
if(!is.null(nrow(mangla))) {stop(paste("\n \n Tú manglar at installera package/s:", mangla))}



rmarkdown::render("RapportUppsamlingAlioki.Rmd", params = list(
  alioki = alioki,
  server = Sys.getenv("SERVER"),
  database = Sys.getenv("DATABASE"),
  user = Sys.getenv("USER"),
  loyniord = Sys.getenv("PASSWORD"),
  kemi = kemi,
  lev = utsetur,
  djorlivyear = djorlivyear,
  djorlivreactivetable = djorlivreactivetable
),
output_format = out,
output_file = paste("rapportir/",alioki, "-", format(Sys.Date(), "%y%m%d"), ".", type, sep = ""), envir = new.env()
)

filestodelete <- tibble(files = intersect(list.files(path = "rapportir", pattern = alioki), list.files(path = "rapportir", pattern = type))) %>% 
  arrange(desc(files)) %>% 
  slice(-1) %>% 
  mutate(files = paste("rapportir/", files, sep = ""))
filestodelete <- as.vector(filestodelete$files)

file.remove(filestodelete)

rm(list = ls())