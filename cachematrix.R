## This is Programming Assignment 2 from the Coursera R Programming
## course

## The first function creates a function and then stores certain
## variables to be used by a subsequent function

makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
		set <- function(y) {
			x <<- y
			m <<- NULL
	}
		get <- function() x
		setinverse <- function(solve) m <<- solve
		getinverse <- function() m
		list (set = set, get = get,
			setinverse = setinverse,
			getinverse = getinverse)

}


## Checks if the inverse of a square matrix has been computed already
## and is therefore stored, if not, computes and stores it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m <- x$getinverse()
		if (!is.null(m)) {
			message("getting cached data")
			return(m)
	}
		data <- x$get()
		m <- solve(data, ...)
		x$setinverse(m)
		m
}
