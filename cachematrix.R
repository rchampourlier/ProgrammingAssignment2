## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cache <- NULL
  get <- function() x
  set <- function(value) {
    x <<- value
    cache <<- NULL
  }
  getCache <- function() cache
  setCache <- function(value) {
    cache <<- value
  }
  list(get = get, set = set, getCache = getCache, setCache = setCache)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  cache <- x$getCache()
  if (!is.null(cache)) {
    message("Using cached value")
    return(cache)
  }
  value <- solve(x$get())
  x$setCache(value)
  value
}
