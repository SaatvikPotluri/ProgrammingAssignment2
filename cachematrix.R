## Put comments here that give an overall description of what your
## functions do
## To cache the inverse of matrix

## Write a short comment describing this function
## This function is to set the value of the matrix; get the value of the matrix: set the value of the mean and get the value of the mean. This allows us to get the inverse methodSignatureMatrix
## The inverse of matrix is cached.

makeCacheMatrix <- function(x = matrix()) {
j <- NULL
set <- function(y){
  x<<-y
  j<<-NULL
}
get <- function()x
setInverse <- function(inverse)j<<- inverse
getInverse <- function()j
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## This function works on the vector, "matrix"created in the previous function. It checks if the matrix has been previously calculated adn if so, it skips the computation, providing the mean from cache.
## If not, it starts computing the mean.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
j<- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
mat <- x$get()
  j <- solve(mat, ...)
  x$setInverse(j)
  return(j)
  }
