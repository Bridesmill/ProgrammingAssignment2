## function written for coursera datascience rprog-006 assignment 2
## takes a matrix and creates cached version of its inverse

cachematrix <- function(mymatrix = matrix()) {
        ##declare new object
        inversematrix <- NULL
        set <- function(newmatrix) {
                mymatrix <<- newmatrix
                inversematrix <<- NULL ##clear variable
        }
        ## functions to retrieve object & set & retrieve its inverse
        get <- function() mymatrix
        setinverse <- function(new_inverse) inverse <<- solve(mymatrix)
        getinverse <- function() inverse
        list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}
        ##
##cacheSolve <- function(mymatrix, ...) {
## Return a matrix that is the inverse of 'mymatrix'. if it doesn't exist, it is created,
## otherwise it retrieves from cache
cacheSolve <- function(mymatrix, ...) {
        myinversematrix <- mymatrix$getinverse()
        ## see if it's in the cache, if so get it, else calculate it and set it.
        if(!is.null(myinversematrix)) {
                myinversematrix <- solve(data, ...)
                
                return(myinversematrix)
        }
        data <- mymatrix$get()
        message("getting cached data")
        return(myinversematrix)
        mymatrix$setinverse(myinversematrix)
        myinversematrix
}
