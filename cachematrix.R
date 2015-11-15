## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        #sets matrix inverse value to null
	inv <- NULL 
	
	#defines function set
	#super assigns value of y to x
	#super assigns null value to inv
	set <- function(y) {
		x <<- y 
		inv <<- NULL 
	}
	
	#returns the input matix
	get <- function()x 
	#set matrix inverse
	setinv <- function(inv1) inv <<- inv1
	#returns matrix inverse
	getinv <- function() m
	
	#returns list of functions
	list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        	
	inv <- x$getinv()
	
	if(!is.null(inv)) {
		message("getting cached data")
		return(inv)
	}
	
	data <- x$get()
	
	inv <- solve(data,...)
	
	x$setinv(inv)
	
	inv
}
