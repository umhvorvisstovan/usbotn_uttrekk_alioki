# usbotn_uttrekk_alioki
RMarkdown rapport frá dátugrunninum usbotn - pr. aliøki


### Hesi programmir skulu verða installeraði

* R - https://www.r-project.org/
* RStudio - https://rstudio.com/
* Ein odbc drivari skal verða installeraður á tínari teldu sum hóskar til dátugrunnin, ið verður nýttur!
    * PostreSQL - https://odbc.postgresql.org/


### R projectið verður downloadað ella clonað frá Github

Fyri at r pakkar og dátugrunn upplýsingar skulu innlesast, skal skriptið **scripts/koyrfyrst_packages_and_credentials.R** koyrast.

* teir r pakkar tú manglar verða installeraðir
* ein localur **.Renviron** fílur verður upprætaður, inn í henda fílin skal tú skriva upplýsingarnar um dátugrunnin og tín brúkara: server, database, username og password. OBS! Best er at nýta ein "view" brúkara í hesum førðinum.


### Fyri at gera eina rapport skal tú:

1. leggja úttrekk frá aliskipanini (.xlsx) í faldaran "data/UrAliskipan/", navnið skal verða AXX.xlsx, har XX er nummari á aliøkinum.
2. leggja eina møguliga forsøgn í sama faldara "data/UrAliskipan/", navnið skal verða AXXforsogn.xlsx
3. síðani koyra r script fílin **uttrekk.R**. Fylg vegleiðingini í fílinum!
