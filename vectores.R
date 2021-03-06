# VECTOR EXERCISE
# 3 - Write a R program to append value to a given empty vector.
vector <- c()
values <- c(1,2,6,4)

for (i in 1:length(values))
  vector[i] <- values[i]
print(vector)


#6. Write a R program to find Sum, Mean and Product of a Vector.
x <- c(10, 20, 30)
print(c('sum:', sum(x)))
print(c('Mean:',mean(x)))
print(c('Product:',prod(x)))


#7. Write a R program to find Sum, Mean and Product of a Vector, ignore element 
#like NA or NaN
x <- c(10, NULL, 20, 30, NA)
#Ignoring NA values:
print(c("Sum1:",(sum(x, na.rm=TRUE))))
print(c("Mean1:",(mean(x, na.rm=TRUE))))  
print(c("Prod1:",(prod(x, na.rm=TRUE)))) 

#8. Write a R program to find the minimum and the maximum of a Vector.
x <- c(10, 20, 30, 5, 25)
print(c("minimum=",(min(x))))
print(c("Maximum=",(max(x))))


#9. Write a R program to sort a Vector in ascending and descending order.
x <- c(10, 20, 30, 5, 25)
print(c("Ascending order=",sort(x)))
print(c("Descending order=",(sort(x,decreasing=TRUE))))


#10. Write a R program to test whether a given vector contains a specified element.
x = c(10, 20, 30, 5, 25)
print(c("Contains 25=",(is.element(25,x))))
print(c("Contains 56=",(is.element(56,x))))

#12. Write a R program to access the last value in a given vector. 
x = c(10, 20, 30, 5, 25)
print("Last value of the said vector:")
print(tail(x, n=1))


#13. Write a R program to find second highest value in a given vector
x <- c(10, 20, 30, 5, 25)
l <- length(x)
print(x)
print(sort(x))
print(sort(x, partial = l-1)[l-1])

#14. Write a R program to find nth highest value in a given vector.
x <- c(10, 20, 30, 20, 20, 25, 9, 26)
print("n <- 4")
n <- 4
print(c("ascending order=",(sort(x,decreasing=TRUE)[n])))


#16. Write a R program to convert given dataframe column(s) to a vector.
dfc1 = c(1, 2, 3, 4, 5)
dfc2 = c(6, 7, 8, 9, 10)
dfc3 = c(11, 12, 13, 14, 15)
dfc4 = c(16, 17, 18, 19, 20)
v <- data.frame(dfc1, dfc2, dfc3, dfc4)
print(v)


#20. Write a R program to reverse the order of given vector.
v <- c(0, 10, 10, 10, 20, 30, 40, 40, 40, 50, 60)
rv = rev(v)
print(rv)


#23. Write a R program to convert two columns of a data frame to a named vector.

df <- data.frame(code = c("R","G","W","B"), 
                name = c("Red", "Green", "White", "Black")
)
print("Original vector:")
print(df)
result = setNames(as.character(df$name), df$code)
print(result)






