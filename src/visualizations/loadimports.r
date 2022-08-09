if (!require("pacman")) install.packages("pacman")


pacman::p_load(pacman, party, rio, tidyverse, httpgd, languageserver)
#Scatterplots
hgd()
hgd_browse()
(df <- import("~/Documents/GitHub/north-carolina-chapter-bus-drivers/src/data/Winston_Salem_Bus_Riders_imputed.xlsx")%>% 
as_tibble()) %>%
select(wage_primary_job, annual_inc) %>%
 print()
#scatterplot
df %>% select(wage_primary_job, annual_inc) %>%
plot(main = "Scatterplot of Wages vs. Annual Income",
    xlab("Dollars/Hour"),
    ylab("Dollars/Year"),
    col  = "black",  # Color of points
    pch  = 20,      # "Plotting character" (small circle)
    )
abline(lm(df$annual_inc ~ df$wage_primary_job))
fit1 <- lm(df$annual_inc ~ df$wage_primary_job)
# Summarize regression model
summary(fit1)

# Confidence intervals for coefficients
confint(fit1)

# Predict values of "volunteering"
predict(fit1)

# Prediction intervals for values of "volunteering"
predict(fit1, interval = "prediction")

# Regression diagnostics
lm.influence(fit1)
influence.measures(fit1)

hist(df$wage_primary_job,
  breaks = 15,  # Suggest number of breaks
  main   = "Histogram of wages of primary job",
  sub    = "(Source: ggplot2::wage_primary_job)",
  ylab   = "Frequency",
  xlab   = "wages in dollars approx",
  border = NA,  # No borders on bars
  col    = "#CD0000"  # red3
  )
 # open browser
