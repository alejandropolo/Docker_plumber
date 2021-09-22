
library(plumber)
options(warn=-1)


r <- plumber::plumb("StrandedPlumberAPIHC.R")
r$run(host="127.0.0.1",swagger=TRUE,getOption("plumber.docs.callback"))


# To run in your browser
#http://127.0.0.1/__docs__/
