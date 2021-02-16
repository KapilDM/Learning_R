#Basic Exercise

#3. Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 60 and sum of numbers from 51 to 91. 

secuencia = seq(20,50)
media = mean(20:60)
suma = sum(51:91)

#4. Write a R program to create a vector which contains 10 random integer values between -50 and +50.

v = sample(-50:50, 10, replace=TRUE)
print(v)

#5. Write a R program to get the first 10 Fibonacci numbers.

Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
  print(Fibonacci[i])

#7. Write a R program to print the numbers from 1 to 100 and print "Fizz" for multiples of 3, print "Buzz" for multiples of 5, and print "FizzBuzz" for multiples of both.
  
  for (n in 1:100) {
    if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
    else if (n %% 3 == 0) {print("Fizz")}
    else if (n %% 5 == 0) {print("Buzz")}
    else print(n)
  }
  

#9. Write a R program to find the factors of a given number.
  
  print_factors = function(n) {
    print(paste("The factors of",n,"are:"))
    for(i in 1:n) {
      if((n %% i) == 0) {
        print(i)
      }
    }
  }
  print_factors(4)
  print_factors(7)
  print_factors(12)

#10. Write a R program to find the maximum and the minimum value of a given vector.
  
  nums = c(10, 20, 30, 40, 50, 60)
  print('Original vector:')
  print(nums)   
  print(paste("Maximum value of the said vector:",max(nums)))
  print(paste("Minimum value of the said vector:",min(nums)))

#13. Write a R program to create a list of random numbers in normal distribution and count occurrences of each value.
  
nums = c(10, 20, 30, 40, 50, 60)
print('Original vector:')
print(nums)   
print(paste("Maximum value of the said vector:",max(nums)))
print(paste("Minimum value of the said vector:",min(nums)))

#15. Write a R program to create three vectors numeric data, character data and logical data. Display the content of the vectors and their type.

a = c(1, 2, 5, 3, 4, 0, -1, -3)
b = c("Red", "Green", "White")
c = c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)
print(a)
print(typeof(a))
print(b)
print(typeof(b))
print(c)
print(typeof(c))

#22. Write a R program to create  bell curve of a random normal distribution. 

n = floor(rnorm(10000, 500, 100))
t = table(n)
barplot(t)

#25. Write a R program to create a Dataframes which contain details of 5 employees and display the details

Employees = data.frame(Name=c("Anastasia S","Dima R","Katherine S", "JAMES A","LAURA MARTIN"),
                       Gender=c("M","M","F","F","M"),
                       Age=c(23,22,25,26,32),
                       Designation=c("Clerk","Manager","Exective","CEO","ASSISTANT"),
                       SSN=c("123-34-2346","123-44-779","556-24-433","123-98-987","679-77-576")
)
print("Details of the employees:")                      
print(Employees)

#26. Write a R program to create a Data Frames which contain details of 5 employees and display summary of the data

Employees = data.frame(Name=c("Anastasia S","Dima R","Katherine S", "JAMES A","LAURA MARTIN"),
                       Gender=c("M","M","F","F","M"),
                       Age=c(23,22,25,26,32),
                       Designation=c("Clerk","Manager","Exective","CEO","ASSISTANT"),
                       SSN=c("123-34-2346","123-44-779","556-24-433","123-98-987","679-77-576")
)
print("Summary of the data:")                      
print(summary(Employees))