#Dataframe Exercise

#1. Write a R program to create an empty data frame.

df = data.frame()
print(df)

#2. Write a R program to create a data frame from four given vectors.

df2 <- data.frame(name = c("Xeles", "Juan", "Maria", "Kapil"), 
                  surname = c("Rodriguez", "Guerrero", "Cagigas", "Dadlani"),
                  Edad = c(99, 26.5, 27, 35))
print(df2)
              

#3. Write a R program to get the structure of a given data frame.

print(str(df2))

#4. Write a R program to get the statistical summary and nature of the data of a given data frame.

print(summary(df2))

#5. Write a R program to extract specific column from a data frame using column name.

Extract <- data.frame(df2$surname,df2$Edad)
print(result)

#6. Write a R program to extract first two rows from a given data frame.

#7. Write a R program to extract 3rd and 5th rows with 1st and 3rd columns from a given data frame

#8. Write a R program to add a new column in a given data frame.

#9. Write a R program to add new row(s) to an existing data frame.

#10. Write a R program to drop column(s) by name from a given data frame.

#11. Write a R program to drop row(s) by number from a given data frame.

#12. Write a R program to sort a given data frame by multiple column(s).

#13. Write a R program to create inner, outer, left, right join(merge) from given two data frames.

#14. Write a R program to replace NA values with 3 in a given data frame. 

#15. Write a R program to change a column name of a given data frame. 

#16. Write a R program to change more than one column name of a given data frame.

#17. Write a R program to select some random rows from a given data frame.

#18. Write a R program to reorder an given data frame by column name.

#19. Write a R program to compare two data frames to find the row(s) in first data frame that are not present in second data frame.

#20. Write a R program to find elements which are present in two given data frames.

#21. Write a R program to find elements come only once that are common to both given data frames.

#22. Write a R program to save the information of a data frame in a file and display the information of the file.

#23. Write a R program to count the number of NA values in a data frame column.

#24. Write a R program to create a data frame using two given vectors and display the duplicated elements and unique rows of the said data frame.

#25. Write a R program to call the (built-in) dataset airquality. Check whether it is a data frame or not? Order the entire data frame by the first and second column. 

#26. Write a R program to call the (built-in) dataset airquality. Remove the variables 'Solar.R' and 'Wind' and display the data frame. 

