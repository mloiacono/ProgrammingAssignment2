## This pair of functions provided below cache the inverse of a matrix


## this funciton creates a special "matrix" object that can cache its reverse
# makeCacheMatrix creates a list containing a function to
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NUL
        }
        get <- funciton() x
        setinverse <- funciton(inverse) inv <<- inverse
        getinverse <- funciton() inv
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## this function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## if the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data.")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
}
