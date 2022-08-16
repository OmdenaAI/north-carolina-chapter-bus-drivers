if (!require("pacman")) install.packages("pacman")


pacman::p_load(pacman, party, rio, tidyverse, httpgd, languageserver)
#Scatterplots
hgd()
hgd_browse()
(df <- import("~/Documents/GitHub/north-carolina-chapter-bus-drivers/src/data/Winston_Salem_Bus_Riders_imputed.xlsx")%>% 
as_tibble())

# Correlation matrix for data frame
cor(df)

# Rounded to 2 decimals

