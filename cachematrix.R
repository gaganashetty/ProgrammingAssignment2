

## Write a short comment describing this function

#Create a matrix
#Get and display the user-defined matrix
#Calculate the inverse of the user-defined matrix
#Get and display the calculated inverse matrix
makeCacheMatrix <- function(x = matrix()) {
j <- NULL #j is assigned as null
set <- function(y){
x<<-y
j<<-NULL
}
get <- function()x#Here we are calling the function
setInverse <- function(inverse) j <<- inverse
getInverse <- function() j 
list(set = set, get = get, 
setInverse = setInverse, 
getInverse = getInverse)
}

## Write a short comment describing this function

#Once we have set our matrix using the set.matrix function from above,we can either use the set.inverse function from above, or use the function below
# to calculate the inverse matrix.
# This function also caches the inverse such that if we run it again, it won't recalculate the mean,
# rather it will pull it out of the cache of the envrionment of the MakeCacheMatrix function.
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
j <- x$getInverse()#Here we are assigning j with the inverse of x
if(!is.null(j)){
message("getting cached data")
return(j)
}
mat <- x$get()
j <- solve(mat,...)
x$setInverse(j)
j
}