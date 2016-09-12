black.alone <- "https://docs.google.com/spreadsheets/d/1EgGjVO-CD_kGmKevz3JXRps7_d1fBvHIfzmRE0KnTOY/pub?output=csv&id=1EgGjVO-CD_kGmKevz3JXRps7_d1fBvHIfzmRE0KnTOY"

below.poverty <-"https://docs.google.com/spreadsheets/d/1u_j8dMr-tbZGzqT-ijUj6vGZaW6XSr31SAqnGtfm9JQ/pub?output=csv&id=1u_j8dMr-tbZGzqT-ijUj6vGZaW6XSr31SAqnGtfm9JQ"

renter.occupied <- "https://docs.google.com/spreadsheets/d/1aU8t-r1trjwSfekafnT5uk981Xp8dBM9bYkevUyuBcM/pub?output=csv&id=1aU8t-r1trjwSfekafnT5uk981Xp8dBM9bYkevUyuBcM"

black.alone <- getURL(black.alone,.opts=list(ssl.verifypeer=FALSE))
black.alone <- read.csv(textConnection(black.alone))
black.alone <- black.alone[c("town", "black.alone")]


below.poverty <- getURL(below.poverty,.opts=list(ssl.verifypeer=FALSE))
below.poverty <- read.csv(textConnection(below.poverty))
below.poverty <- below.poverty[c("town", "below.poverty")]

renter.occupied <- getURL(renter.occupied,.opts=list(ssl.verifypeer=FALSE))
renter.occupied <- read.csv(textConnection(renter.occupied))
renter.occupied <- renter.occupied[c("town", "renter.occupied")]

library(trendct)

black.alone <- left_join(bll.min, black.alone)


black.alone <- black.alone[c("town", "black.alone", "bll5")]
trendchart(black.alone, headline = "Number of lead-poisoned children versus number of black residents", subhead = "Children who had blood lead levels higher than 5 µg/dL. Based on figures from 2013.", src = "Department of Public Health, U.S. Census",
           byline = "Andrew Ba Tran/TrendCT.org", type = "scatter", xTitle = "Residents living in poverty", yTitle = "Lead-poisoned children",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")


below.poverty <- left_join(bll.min, below.poverty)
below.poverty <- below.poverty[c("town", "below.poverty", "bll5")]
trendchart(below.poverty, headline = "Number of lead-poisoned children versus residents living in poverty", subhead = "Children who had blood lead levels higher than 5 µg/dL. Based on figures from 2013.", src = "Department of Public Health, U.S. Census",
           byline = "Andrew Ba Tran/TrendCT.org", type = "scatter", xTitle = "Residents living in poverty", yTitle = "Lead-poisoned children",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")

renter.occupied <- left_join(bll.min, renter.occupied)
renter.occupied <- renter.occupied[c("town", "renter.occupied", "bll5")]
trendchart(renter.occupied, headline = "Residents living in renter-occupied homes versus number of lead-poisoned children", subhead = "Children who had blood lead levels higher than 5 µg/dL. Based on figures from 2013.", src = "Department of Public Health, U.S. Census",
           byline = "Andrew Ba Tran/TrendCT.org", type = "scatter", xTitle = "Residents living in renter-occupied homes", yTitle = "Lead-poisoned children",
           xSuffix = "", ySuffix = "", xPrefix = "", yPrefix = "", option = "")


