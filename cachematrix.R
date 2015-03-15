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

cachemean <- function(x = matrix(), ...) {  #the function is very similar to the chachemean, I retained the 
                                            #same name
        m <- x$getmean()                    #to not incur some bug and as programmers say... "a good 
                                            #programmer is a lazy programmer....... So why should somebody
                                            #changes something that already works as it is....
        if(!is.null(m)) {                   
                message("getting cached data") # only a fool can do that.... so now I will concentrate  
                return(m)                   # to how I can finish this assignment writing the 
        }                                   #last function at the bottom of this file...
                                                #Wish me good luck... Thank you for you attention :D
        data <- x$get()
        m <- solve(data, ...)
        x$setmean(m)
        m
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


 
