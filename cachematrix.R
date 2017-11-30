## Below functions would cache the inverse of a matrix in two steps
## Caching the Inverse of a Matrix

## Step 1: Create cache of inverse

makeCacheMatrix <- function(x = matrix()) {
    cacheMatrix <- NULL ## Initialising cache matrix and assigning NULL Value

    ## Establishing the definition
    set <- function(y) {
        x <<- y
        cacheMatrix <<- NULL
    }
    get <- function() x
    
    ## Definition Setcache
    setcache <-function(inverse) cacheMatrix <<- inverse
    
    ## Definition Gatcache
    getcache <- function() cacheMatrix
    
    ## Listing the methods
    list(set = set, get = get, setcache = setcache, getcache = getcache)
}


## Step2: Return the value of inverse in the cache
cacheSolve <- function(x, ...) {
    
    ## checking the content
    cacheMatrix <-x$getsolve()
    
    ## Returning the results
    if(!is.null(cacheMatrix)){
        return(cacheMatrix)
    }
    
    ## Calculating alternate result
    else{
    dMatrix <-x$getMatrix()
    cacheMatrix <-solve(dMatrix,...)
    x$setCache(cacheMatrix)
    return(cacheMatrix)
}

}
