

## Write a short comment describing this function
##This function creates a special matrix object that can cache its inverse
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

#cacheSolve function computes the inverse of the special matrix returned by makeCacheMatric above.
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