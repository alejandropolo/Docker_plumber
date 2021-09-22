
library(plumber)
library(xgboost)
library(logger)
library(tictoc)

#options(warn=-1)


r <- plumb("StrandedPlumberAPIHC.R")
convert_empty <- function(string){
  if(string==""){
    "-"
  }
  else{
    string
  }
}

r$registerHook(
  list(
    preroute=function(){
      tictoc::tic()
    },
    postroute=function(req,res){
      end<-tictoc::toc(quiet = TRUE)
    }
  )
)
r$run(port=80,host="0.0.0.0")

##,getOption("plumber.docs.callback")
# To run in your browser
#http://127.0.0.1/__docs__/
