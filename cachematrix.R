## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { 

        m <- NULL                      #Here the functions is identical to the makeVector(), only
                                        #the argument of the function changes from x= numeric() to x=matrix()
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(mean) m <<- mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)   
        
}

cachemean <- function(x = matrix(), ...) {  #the function is very similar to the chachemean, I retained the same name
        m <- x$getmean()                    #to not incur some bug and as programmerssay... "a good programmer is a lazy
        if(!is.null(m)) {                   #programmer.... So why should somebody change something that already works as
                message("getting cached data") #it is.... only a food can do that.... so now I will concentrate to how I can 
                return(m)                   #finish this assignment writing the last function at the bottom of this file...
        }                                   #Wish me good luck... Thank you for you attention :D
        data <- x$get()
        m <- solve(data, ...)
        x$setmean(m)
        m
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


 
