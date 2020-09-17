# usbotn_uttrekk_alioki
RMarkdown rapport frá dátugrunninum usbotn - pr. aliøki


### Ritbúnaður at installera á tína teldu:

#### Kravdur ritbúnaður

Fyri at kunna brúka R:

* R - https://www.r-project.org/
* RStudio - https://rstudio.com/

Fyri at hava samband við dátugrunnin frá tínari teldu, skal ein odbc drivari skal verða installeraður, sum hóskar til tann dátugrunnin, ið verður nýttur!

* PostreSQL - https://odbc.postgresql.org/

#### Valfríur ritbúnaður

Um tú ynskir at nýta git (og tí GitHub) hentleikar, so skal tú hava git installerað á tínari teldu.

* git til Windows - https://git-scm.com/


### Fyri at gera eina rapport skal tú:

1. clona ella downloada hetta GitHub repository niður á tína teldu, sí niðanfyri.
2. um rakstr og forsagnar tøl skulu síggjast í rapportini skal tú:
      a. leggja úttrekk frá aliskipanini (.xlsx) í faldaran "data/UrAliskipan/", navnið skal verða AXX.xlsx, har XX er nummari á aliøkinum.
      b. leggja eina møguliga forsøgn í sama faldara "data/UrAliskipan/", navnið skal verða AXXforsogn.xlsx
3. opna R projectið í RStudio við at opna *.Rproj fílin.
4. síðani koyra r script fílin **uttrekk.R**. Fylg vegleiðingini í fílinum!


### Downloadað ella clonað hetta repository frá Github:

Fyri at R projektið kann brúkast, skal scriptið **scripts/koyrfyrst_packages_and_credentials.R** koyrast, hetta veður bert gjørt eina ferð.

Hetta scriptið syrgir fyri at:

* teir r pakkar, ið tú manglar verða installeraðir
* ein localur **.Renviron** fílur verður upprætaður, har tú skal innseta relevantu upplýsingarnar um dátugrunnin og tín brúkara: server, database, username og password. OBS! Best er at nýta ein "view" brúkara í hesum førðinum.

    *Niðanfyri standandi fýra reglurnar skulu setast inn í tín .Renviron fíl, við tínum viðkomandi upplýsingum*:

    SERVER=navn_ella_ip_adressa_á_servaranum  
    DATABASE=navn_á_dátugrunni  
    USER=brúkari  
    PASSWORD=loyniorð  

