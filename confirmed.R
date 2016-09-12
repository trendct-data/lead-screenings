bll <- read.csv("confirmed.town.percent.csv", stringsAsFactors=FALSE)

bll.min <- bll[c("Town", "BLL5")]
colnames(bll.min) <- c("town", "bll5")


dat_data <- bll.min
