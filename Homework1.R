


# Manual download and import
dat <- read.csv(file = 'tgpp.csv')

#1) Used the head() function to see the column titles. Titles are plot, year, record_id, corner, scale, richness, easting, northing, slope, ph
head(dat)
#2) Used this function to find the dimensions of the data set. There are 11 columns and 4080 rows. 
dim(dat)
#3) Used the sapply() function to find that    plot      year record_id    corner     scale  richness   easting 
#"integer" "integer" "integer" "integer" "numeric" "integer" "integer" 
#northing     slope        ph    yrsslb 
#"integer" "integer" "numeric" "numeric" 
sapply(dat, class)
#4)  dat[1,3]
#[1] 187
# dat[8,10]
#[1] 6.9
#> dat[1,7]
#[1] 727000
#> dat[1,10]
#[1] 6.9
#> dat[5,3]
#[1] 191
#> dat[5,7]
#[1] 727000
#> dat[5,10]
#[1] 6.9
#> dat[8,3]
#[1] 194
#> dat[8,7]
#[1] 727000
dat[1,3]
dat[1,7]
dat[1,10]
dat[5,3]
dat[5,7]
dat[5,10]
dat[8,3]
dat[8,7]
dat[8,10]
#5) 
pdf('C:/Users/fishg/OneDrive/Documents/Sustainable Ag. Final Paper/R/Fig1HW1.pdf')
plot(richness~scale, data=dat, xlab = "scale(m^2)", ylab = "richness", col = "royal blue")
dev.off()

head(dat)

dim(dat)
sapply(dat, class)

#1 When I do this it takes the log of the data and makes a graph with a more uniform distribution. 
plot(richness~scale, data=dat, xlab = "scale(m^2)", ylab = "richness", col = "royal blue", log = 'xy')
