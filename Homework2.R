data(iris)
head(iris)

## sp_ids is equal to each species of iris found in the species column
sp_ids = unique(iris$Species)
## tells R to produce a matrix where the number of rows is the number of species and the number of columns is one less than the original data set
output = matrix(0, nrow=length(sp_ids), ncol=ncol(iris)-1)
rownames(output) = sp_ids
colnames(output) = names(iris[ , -ncol(iris)])

for(i in seq_along(sp_ids)) {
  ## Makes subsets of the data based on species
  iris_sp = subset(iris, subset=Species == sp_ids[i], select=-Species)
 ## Make a loop to go from 1 to the number of columns
   for(j in 1:(ncol(iris_sp))) {
  ## Start each column at 0 
   x = 0 
    y = 0
    if (nrow(iris_sp) > 0) {
    ## Make a loop through the rows 
       for(k in 1:nrow(iris_sp)) {
       ## Sum the values of a column going down through the rows
          x = x + iris_sp[k, j] 
      ## Add one to y each time you move down a column
        y = y + 1
      }
      ## Divide the sum of the column by the number of rows, equals the mean
      output[i, j] = x / y 
    }
  }
}
output 
## 1) Output is the mean value of each column for each species. 
## 2) For the number of sp_ids make a loop that makes a subset of data for each species. 
## for j in one to the number of columns in the iris_sp subsets start  each column at x=0 and y=0
## if k in this loop is greater than 0, add to x that value plus the other values in the column. 
## add one to y for each row summed
## divide the total sum of a column by the number of rows summed. 
## output equals the mean of each column for each subset
## 3) output can be renamed mean, x can be total for n column, y can be number of samples for each species
## 4) 

sp_ids = unique(iris$Species)

output = matrix(0, nrow=length(sp_ids), ncol=ncol(iris)-1)
rownames(output) = sp_ids
colnames(output) = names(iris[ , -ncol(iris)])

for(i in seq_along(sp_ids)) {
  iris_sp = subset(iris, subset=Species == sp_ids[i], select=-Species)
  for(j in 1:(ncol(iris_sp))) {
    x = 0
    y = 0
  output[i,j] = mean(iris_sp[,j])
    }
  }
output



#5

y = NULL
x = 1:10
for (i in 1:10) {
  y[i] = sum(x[1:i])
}
y  

#6
y = NULL
x = 1:10
for (i in 1:10) {
  y[i] = sum(x[1:i])
  if (y[i] > 10) {y[i] = "NA"}
  }
y

#7
y = NULL
x = 1:10
for (i in 1:length(x)) {
  y[i] = sum(x[1:i])
}
y  
