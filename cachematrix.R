## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL 
  set <- function(y)
  {
    x<<-y
    m<<-NULL
  }
  get <- function() x
  setInverse <- function(Inverse) m <<-Inverse
  
  getInverse <- function() m
  list (set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## using the MASS package instead of the conventional solve function ... just to check 
  library('MASS')
  m <- x$getInverse()
  if (!is.null(m)){
    message("cache has an Inverse!!!")
    return(m)
  }
  else message("cache is empty !! ")
  data <- x$get()
  m <-ginv(data,...)
  x$setInverse(m)
  m
        
}
