# Load in the Quandl package with the help of library() here:
library(Quandl)

# Assign your first dataset to the variable:
mydata <- Quandl("NSE/OIL")
---
# Your Quandl Package is already loaded in
library(Quandl)

# Assign the Prague Stock Exchange to:
PragueStockExchange <- Quandl("PRAGUESE/PX")
----
library(quantmod)

# Load the Facebook data with the help of Quandl
Facebook <- Quandl("GOOG/NASDAQ_FB", "xts")

# Plot the chart with the help of candleChart()
candleChart(Facebook)
----
library(Quandl)

# Look up the first 3 results for 'Bitcoin' within the Quandl database:
results <- Quandl.search(query = "Bitcoin", silent = FALSE)
  
# Print out the results
str(results)
  
# Assign the data set with code BCHAIN/TOTBC
BitCoin <- Quandl("BCHAIN/TOTBC") 
----
# Assign to the variable Exchange
Exchange <- Quandl("BNP/USDEUR", start_date="2013-01-01", end_date="2013-12-01")
---
#You want to know the Canadian GDP annual percent change. Use the rdiff transformation and assign the result to GDP_Change. Use the code "FRED/CANRGDPR"
# The result:
GDP_Change <- Quandl("FRED/CANRGDPR",transform="rdiff")
-----
#Get crude oil prices on a quarterly basis from the EIA's daily spot price (use the code DOE/RWTC) and assign these to the variable eiaQuarterly.
# Load the Quandl package
library(Quandl)

# The result:
eiaQuarterly <- Quandl("DOE/RWTC",collapse ="quarterly" )
----
#You only want the first 5 observations of the crude oil prices from the EIA (use the code DOE/RWTC) in an ascending order. The result should be assigned to TruSo.
# Load the Quandl package
library(Quandl)

# Assign to TruSo the first 5 observations of the crude oil prices
TruSo <- Quandl("DOE/RWTC",sort = "asc", rows=5)

# Print the result
TruSo
-----
#You want to have the daily percent change in oil prices from January 2005 to March 2010, in ascending order.
# Load the Quandl Package
library(Quandl)

# Here you should place the return:
Final <-Quandl("DOE/RWTC",colapse = "daily",transform = "rdiff", start_date = "2005-01-01",end_date = "2010-03-01", sort= "asc" )
