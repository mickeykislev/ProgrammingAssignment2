## These two functions are conected for producing aan invorse matrix

## The Function "makeCacheMatrix()" meant to calculate
## a matrix in order to upload to cached, the invorse 
## matrix to the one checked.
makeCacheMatrix <- function(x = matrix()) { # the source must be a matrix.
        MatrixInverse <<- NULL ## make sure there isn't any old data.
        MatrixInverse <<- solve(x) ## Upload the inverse matrix to cache.
        print(MatrixInverse) ## Output the result of the inverse matrix. 
}


## The Function "cacheSolve" meant to either to output from cache 
## the inverse of the special "matrix" returned by makeCacheMatrix above,
## or crate a new inverse matrix, if the source is not identical to  
## the matrix in the cache
cacheSolve <- function(x = matrix(), ...) { # the source must be a matrix.
        f <- get("MatrixInverse") # upload from cahce the matrix, made by makeCacheMatrix().
        if(identical(f, x) == TRUE) { ## make a condition of identity between the source vs. cache
                message("getting cached data") ## print an output that the function uploading the data from cache
                return(f) ## output the invorce matrix from cache
        }
        else # if not identical
                message("not the sames as cached - new matrix") ## print an output that the function calculate the new source
                MatrixInverseNew <<- solve(x) ## uoload ti cache the new matrix
                MatrixInverseNew ## output the invorce matrix of the new source
}
