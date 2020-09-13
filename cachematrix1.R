## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL #initializes the variable
  set<- function(y){
    x<<- y #super assignment operator used to make x=y  
    m<<- NULL
  }
  get<- function()x #gets the value 
  
  setvalue<- function(inverse) m <<- inverse
  getvalue<- function() m
  list(set = set, get = get, #naming the lists
       setvalue = setvalue,
       getvalue = getvalue)

}




cacheSolve <- function(x, ...) { #finding inverse
       m<- x$getvalue()
       if(!is.null(m)){
         message("getting cached data")
         return(m) #returns the same value if it is cached
       }
      
       
       data <- x$get()
       m<- solve(data, ...)
       x$setvalue(m)
       m #returns inverse
         
       }

