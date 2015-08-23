## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function

## makeCacheMatrix creates and returns a list of functions
## used by cacheSolve to get or set the inverted matrix in cache
makeCacheMatrix <- function(x = matrix()) {
	# Initialize cache value to NULL
	cache <- NULL
	
	# set or create the matrix 
	set <- function(z) {
	x <<- z
	}

	# get the value of the matrix
	get <- function() x

	# invert the matrix and store in cache
	setMatrix <- function(invert) cache <<- invert
	# get the inverted matrix from cache
	getMatrix <- function() cache

	# return the created functions to the working environment
	list(set = set, get = get, setMatrix = setMatrix, getMatrix = getMatrix)

}

## cacheSolve calculates the inverse of the matrix created in makeCacheMatrix
## It checks the inverted matrix exist in cache which is created and stored by
## makeCacheMatrix function. If it doesn't exist then created and stored in cache.

cacheSolve <- function(x, ...) {
	
        ## get the inverse of the matrix and stored in cache
	cache <- x$getMatrix()

	# If it exists then return from cache else create the matrix

	if(!is.null(cache)) {
		message("getting cached data")

		# Return matrix
		return(cache)
	}

	# create matrix since it does not exist
	matrix <- x$get()


	# set inverted matrix in cache
	x$setMatrix(cache)

	# Return matrix 
	 return(cache)

}
