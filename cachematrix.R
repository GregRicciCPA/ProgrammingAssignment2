## Put comments here that give an overall description of what your
## functions do
##
## MakeCacheMatrix creates a unquie object matrix that can cache its inverse
## Class project Lexical Scoping - Script1
##
makeCacheMatrix <- function(x = matrix()) {
  inv_m <- NULL
  set <- function(y){
    x <<-y
    inv_m <<-NULL #local Eniv assingment
  }
  get <- function()x
  setinverse <- function(inverse)inv_m <<- inverse #local Eniv assingment
  getinverse <- function()inv_m
  list(set=set,get=get,
  setinverse=setinverse,
  getinverse=getinverse)
}
## Next code- Write a short comment describing this function
##
## CacheSolve returns the inverse of makeCacheMatrix function, and/or
## computes the inverse then returns the value
## Class project Lexical Scoping - Script2
##
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv_m <-x$getinverse()
  if(!is.null(inv_m)){
## calculate ? Pause
    message("Hold please, something realy cool is happening, getting Cached Inversed Matrix")
  return(inv_m)
    }else{
  inv_m <- solve(x$get())
  x$setinverse(inv_m)
  
  return(inv_m)
}
}
                   