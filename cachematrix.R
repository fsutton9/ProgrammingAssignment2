## The following functions will give the researcher the ability to use functions to limit the cost of computations and obtain a solution for a matrix solving for x. 

## The function makeCacheMatrix is used to create a specific matrix, that is able to cache the inverse of a value.

makeCacheMatrix <- function(x = matrix()) { ##function makeCacheMatrix takes an argument of x which is a matrix
        inv <- NULL ##Create empty cache to store inverse of matrix x

        set <- function(y) {
                x <<- y
                inv <<- NULL
        } ##Set the value of matrix x

        get <- function() x ##Gets the value of matrix x

        setinv <- function(inverse) inv <<- inverse ##Lets the inverse of matrix x

        getinv <- function() inv ##Gets the inverse of matrix x

        list(set=set, get=get, setinv=setinv, getinv=getinv) ##returns list of functions specified 

}


## The function cacheSolve computes the inverse of the specific matrix received of the function above. If the inverse has been calculated and the value has not changed, then the cacheSolve will retrieve the invese of the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
im <- x$getinverse()
  if(!is.null(im)) {
    message("getting cached data")
    return(im)
  }
  the_matrix <- x$get()
  im <- solve(the_matrix, ...)
  x$setinverse(im)
  im
}
