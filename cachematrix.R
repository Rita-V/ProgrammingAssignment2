## This function calculates the inverse of a matrix 
## and caches it for further use, unless it is already cached
## then it provides the cached matrix

## this function creates a matrix of the inverse of x and caches it

makeCacheMatrix <- function(x = matrix()) {

        m <- NULL				
        set <- function(y) {
                x <<- y				
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse  ## caching the inverse
        getinverse <- function() m			## getting the cached inverse
        list(set = set, get = get,
             setinverse = setinverse ,
             getinverse = getinverse )
}




## this function calculates the inverse of a matrix, 
##or provides the already cached inverse of the matrix

cacheSolve <- function(x, ...) {

m <- x$getinverse ()
        if(!is.null(m)) {			##checking to see if there is already a cached inverse
                message("getting cached data")
                return(m)			##give the already cached inverse matrix
        }
        data <- x$get()			
        m <- solve(data)			##calculating the inverse of the matrix
        x$setinverse(m)			##putting the inversed matrix in the setinverse function in the makecachematric function
        m						##return the inverse matrix



        
}
