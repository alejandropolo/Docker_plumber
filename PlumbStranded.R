
library(plumber)
options(warn=-1)


r <- plumber::plumb("StrandedPlumberAPIHC.R")
r$run(port=8088, host="0.0.0.0",swagger=TRUE)


# To run in your browser
#http://127.0.0.1/__docs__/
