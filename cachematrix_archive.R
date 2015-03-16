## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { 
        
        m <- NULL                      #Here the functions is identical to the makeVector(), only
                                        #the argument of the function changes from x= numeric() to x=matrix()
        set <- function(y) {
                x <<- y
               z <<- y
                m <- NULL
                
        }
        get <- function() x
        setmean <- function(mean) {m <<- mean
                                   matr <<- z}
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

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
#                                               So let's se how we can deal with this last function
                                                #someone said that would copy this code and write it down
                                                #on their projects.R... DO IT!!!!! hihihihihiihi
                                                #Ok let's se the code:
storer <- makeCacheMatrix(x) #create the object... into this there will be the cash stored and the logic
                                                #that permits to the function to understand if what 
                                                #we have in the object is similar on what we have already
                                                #in the cache... in programmer terms... Set a switch...
                                                #if m is active (it exists) then somebody switched it on
                                                #and therefore something is stored in the cache....
                                                #this is the story in brief...
if (exists(as.character(substitute(matr)))) {

        if (sum(x == matr) == dim(x)[1]^2) {



                 
        message("getting cached data")
        cachemean(storer)

#storer$get()
        }
        else {message("Cache doesn't containt the solution")
                message("I procede to calculate the inverse of the matrix")
        storer$set(x)
        cachemean(storer)}
}





else{


        #Put the matrix in the object
        
        #compute the inverse
        storer$set(x)
        cachemean(storer)
        

}
}