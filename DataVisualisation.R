library('plyr')

dataset = read.csv("HollyWoodMovies.csv")

dataset$License = factor(dataset$License,
                         levels = c('PG-13', 'PG', 'G', 'R'),
                         labels = c(1, 2, 3, 4))

count(dataset, 'License')

x<-c(363, 173, 14, 194, 174)
labels<-c("PG-13", "PG", "G", "R", "N/A")

pie(x, labels, main="Rating Distribution", col = rainbow(length(x)))

barplot(dataset$Domestic.Sales..in...,
        main='Domestic Sales Figure of Movies',
        xlab='Amount Grossed', horiz=FALSE)

barplot(dataset$International.Sales..in...,
        main='International Sales Figure of Movies',
        xlab='Amount Grossed', horiz=FALSE)

barplot(dataset$World.Sales..in...,
        main='Worldwide Sales Figure of Movies',
        xlab='Amount Grossed', horiz=FALSE)

hist(dataset$Domestic.Sales..in..., 
     main = 'Domestic Sales Figure of Movies',
     xlab ="Amount Grossed",
     col = "yellow",
     freq = TRUE)

hist(dataset$International.Sales..in..., 
     main = 'International Sales Figure of Movies',
     xlab ="Amount Grossed",
     col = "red",
     freq = TRUE)

hist(dataset$World.Sales..in..., 
     main = 'Worldwide Sales Figure of Movies',
     xlab ="Amount Grossed",
     col ="blue",
     freq = TRUE)

boxplot(dataset$International.Sales..in..., 
        main = "International Sales Figure of Movies",
        xlab = "Amount in $", ylab = "Sales Figure",
        col = "orange", border = "brown",
        horizontal = TRUE, notch = TRUE)

boxplot(dataset$Domestic.Sales..in..., 
        main = "Domestic Sales Figure of Movies",
        xlab = "Amount in $", ylab = "Sales Figure",
        col = "red", border = "brown",
        horizontal = TRUE, notch = TRUE)

boxplot(dataset$World.Sales..in..., 
        main = "Worldwide Sales Figure of Movies",
        xlab = "Amount in $", ylab = "Sales Figure",
        col = "blue", border = "brown",
        horizontal = TRUE, notch = TRUE)

boxplot(dataset[, 6:8],
        main ='Box Plots of Sales Figure')

plot(dataset$Domestic.Sales..in..., dataset$International.Sales..in...,
     main ="Scatterplot of International vs Domestic Sales",
     xlab ="Domestic Sales Figures",
     ylab =" International Sales Figures ", pch=20)

plot(dataset$Domestic.Sales..in..., dataset$World.Sales..in...,
     main ="Scatterplot of Domestic vs Worldwide Sales",
     xlab ="Domestic Sales Figures",
     ylab =" Worldwide Sales Figures ", pch=20)

plot(dataset$International.Sales..in..., dataset$World.Sales..in...,
     main ="Scatterplot of International vs Worldwide Sales",
     xlab ="International Sales Figures",
     ylab =" Worldwide Sales Figures ", pch=20)

