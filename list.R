#List Exercise
#1. Write a R program to create a list containing strings, numbers, vectors and a logical values.

list_data <- list("Python", "PHP", c(5, 7, 9, 11), TRUE, 125.17, 75)
print("Data of the list:")
print(list_data)

#8. Write a R program to merge two given lists into one list.
n1 = list(1,2,3)
c1 = list("Red", "Green", "Black")
print(n1)
print(c1)
mlist =  c(n1, c1)
print(mlist)


#10. Write a R program to create a list of dataframes and access each of those dataframes from the list.

df1 <- data.frame(y1 = c(0, 1, 2), y2 = c(3, 4, 5))
df2 <- data.frame(y1 = c(6, 7, 8), y2 = c(9, 10, 11))
print(df1)
print(df2)
new_list = list(df1, df2)
print(new_list)
print("Accessing Data frame-1")
print(new_list[[1]])
print("Data frame-2")
print(new_list[[2]])

#11. Write a R program to count number of objects in a given list.

list_data <- list("M","S","L","T","Y")
print(list_data)
print(c("Tamaño de lista=",length(list_data)))


#12. Write a R program to convert a given dataframe to a list by rows

exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print(exam_data)
new_list = split(exam_data, seq(nrow(exam_data)))
print("dataframe rows to a list:")
print(new_list)

#14. Write a R program to assign NULL to a given list element.

l = list(1, 2, 3, 4, 5)
print("Set 2nd element to NULL")
l[2] = list(NULL) 
print(l)