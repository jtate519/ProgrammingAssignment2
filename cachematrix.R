## The following two function can be used to cache the inverse of a matrix. 

## makeCacheMatrix creates a list containing a function to set the value of the matrix,  
## get the value of the matrix, set the value of the inverse of the matrix and get the value 
## of the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set<-function(y){
     x<<-y
     inv <<NULL
     
  }
get<-function() x
setInverse<-function(inverse) inv<<- inverse
getInverse<-function()inv
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## The following function return the inverse of the matrix.  It first checks to see if 
## the inverse has been computed.If so it skips the computation and sets the value in 
## the cache via a setinverse function. 

cacheSolve <- function(x, ...) {
    inv <-x$getinverse()
    if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
   data<-x$getinverse()
   inv<-solve(data)
   x$setinverse(inv)
   inv

    }
