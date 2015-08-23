# PROGRAMMING ASSIGNMENT 2  dasjpatel15
### The following functions work together to create a square invertible matrix
### and make the inverse of the matrix available in the cache environment
###
### Sample run-time example included results
#### > source("cachematrix.R") 	load R program
#### > b <- makeCacheMatrix() 	create functions
#### > b$set(matrix(101:104,2,2))   create matrix
#### > b$get()			checking the matrix created in b
#### [,1] [,2]
#### [1,]  101  103
#### [2,]  102  104
#### > cacheSolve(b)		First execution returns inverted matrix
#### [,1]  [,2]
#### [1,]  -52  51.5
#### [2,]   51 -50.5
#### cacheSolve(b)		Second runs returns inverted matrix from cache
#### getting cached data
#### [,1]  [,2]
#### [1,]  -52  51.5
#### [2,]   51 -50.5
