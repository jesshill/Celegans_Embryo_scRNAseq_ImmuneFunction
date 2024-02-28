install.packages('devtools')
library(devtools)

# example
#install_github(repo, username = NULL, ref = "master", subdir = NULL,
#               auth_token = github_pat(quiet), host = "https://api.github.com",
#               quiet = FALSE, ...)

install_github("prabhakarlab/RCAv2", force = TRUE)
library("RCAv2")






