#Dataframe Exercise

#1. Write a R program to create an empty data frame.

df2 = data.frame()
print(df2)

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

Extract <- data.frame(df2$name,df2$Edad)
print(Extract)

#6. Write a R program to extract first two rows from a given data frame.

head(df2,2)

first_two_rows =  df2[1:2,] #Primero van los rows y despues los columns, por eso ponemos la "coma"
print(first_two_rows)

#7. Write a R program to extract 3rd and 5th rows with 1st and 3rd columns from a given data frame

extracting =  df2[c(3,5),c(1,3)]  #ME da null es segundo resultado porque solo tengo 4 filas
print(extracting)

#8. Write a R program to add a new column in a given data frame.

df2["Sexo"] = c("Mujer","Hombre","Mujer","Hombre")
print(df2)

#9. Write a R program to add new row(s) to an existing data frame.

nuevos_datos = data.frame(
  name = c('Leo', 'Estela'),
  surname = c("Sanchez", "Falgas"),
  Edad = c(23, 23),
  Sexo = c('Hombre', 'Mujer'))

df2 =  rbind(df2, nuevos_datos)
print(df2)

#10. Write a R program to drop column(s) by name from a given data frame.

drop_column = subset(df2, select = -c(Sexo))
print(drop_column)

#11. Write a R program to drop row(s) by number from a given data frame.

df2 <- df2[-c(6),] 
print(df2)

#12. Write a R program to sort a given data frame by multiple column(s).

g = df2[with(df2, order(Edad)), ]
print(g)

#13. Write a R program to create inner, outer, left, right join(merge) from given two data frames.

df_je = data.frame(numeros = c(12, 14, 10, 11))
df2_je = data.frame(numeros = c(13, 15, 11, 12))
print(df_je)
print(df2_je)
print("Left outer Join:")
result1 = merge(df_je, df2_je, by = "numeros", all.x = TRUE)
print(result1)
print("Right outer Join:")
result2 = merge(df_je, df2_je, by = "numeros", all.y = TRUE)
print(result2)
print("Outer Join:")
result3 = merge(df_je, df2_je, by = "numeros", all = TRUE)
print(result3)
print("Cross Join:")
result4 = merge(df_je, df2_je, by = NULL)
print(result4)

#14. Write a R program to replace NA values with 3 in a given data frame.

df2["Ciudad"] = c("Madrid","Malaga", NA ,"Tenerife", "Valencia")
print(df2)
df2[is.na(df2)] = 3
print(df2)

#15. Write a R program to change a column name of a given data frame. 

colnames(df2)[which(names(df2) == "name")] = "Nombre"
print(df2)

#16. Write a R program to change more than one column name of a given data frame.

colnames(df2)[which(names(df2) == "surname")] = "Apellido"
colnames(df2)[which(names(df2) == "Ciudad")] = "City"
print(df2)


#17. Write a R program to select some random rows from a given data frame.

print(df2[sample(nrow(df2), 2),])

#18. Write a R program to reorder an given data frame by column name.

reordered_df = df2[c("Sexo", "Edad", "Nombre", "Apellido", "City")]
print(reordered_df)

#19. Write a R program to compare two data frames to find the row(s) in first data frame that are not present in second data frame.

print(setdiff(df_je,df2_je))

#20. Write a R program to find elements which are present in two given data frames.

a = c("a", "b", "c", "d", "e")
b = c("d", "e", "f", "g")
result123 = intersect(a, b)
print(result123)

#21. Write a R program to find elements come only once that are common to both given data frames.

result = union(a, b)
print(result)

#22. Write a R program to save the information of a data frame in a file and display the information of the file.

print("Original dataframe:")
print(df2)
save(df2,file="data.rda")
load("data.rda")
file.info("data.rda") 

#23. Write a R program to count the number of NA values in a data frame column.

print(sum(is.na(exam_data$attempts))) #exam_data es el nombre del dataframe y attempts es el nombre de la columna

#24. Write a R program to create a data frame using two given vectors and display the duplicated elements and unique rows of the said data frame.

a = c(10,20,10,10,40,50,20,30)
b = c(10,30,10,20,0,50,30,30)
ab = data.frame(a,b)
print(ab)
print(duplicated(ab))
print(unique(ab))

#25. Write a R program to call the (built-in) dataset airquality. Check whether it is a data frame or not? Order the entire data frame by the first and second column. 

data = airquality
print("Original data: Daily air quality measurements in New York, May to September 1973.")
print(class(data))
print(head(data,10))
result = data[order(data[,1]),]
print("Order the entire data frame by the first and second column:")
print(result)

#26. Write a R program to call the (built-in) dataset airquality. Remove the variables 'Solar.R' and 'Wind' and display the data frame. 

data = airquality
print("Original data: Daily air quality measurements in New York, May to September 1973.")
print(data)
data[,c("Solar.R")]=NULL
data[,c("Wind")]=NULL
print("data.frame after removing 'Solar.R'  and 'Wind' variables:")
print(data)

