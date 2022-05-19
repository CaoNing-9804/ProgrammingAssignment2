## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    rmatrx <- NULL
    set <- function(y){
        x <<- y
        rmatrx <<- NULL
    }
    get <- function() x
    setsolve <- function(solve){
        rmatrx <<- solve
    }
    getsolve <- function() rmatrx
    list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    solve <- x$getsolve()
    if(!is.null(solve)) {
        message("getting cached data")
        return(solve)
    }
    data <- x$get()
    solve <- solve(data, ...)
    x$setsolve(solve)
    solve
}
