#Data Prepation

# Assuming the data is stored in a CSV file named 'Data.csv'
Data <- read.csv('all_ai_tool- new.csv')
# Identify duplicate rows based on a unique identifier
column_names <- names(Data)
column_names

duplicate_rows <- duplicated(Data[, c("AI.Tool.Name", "Description", "Free.Paid.Other", "Useable.For", "Charges", "Review", "Tool.Link", "Major.Category")])

# Example if missing values are represented as empty strings in character columns
missing_counts <- sapply(Data, function(x) sum(x == ""))
print(missing_counts)

# Make sure column names are unique and meaningful
column_names <- make.names(names(Data))
print(column_names)


#Exploratory Data Analytics


# Check the data type of the 'Charges' column
print(class(Data$Charges))

# Convert 'Charges' column to numeric if it's not already
Data$Charges <- as.numeric(Data$Charges)

# Check the data type again
print(class(Data$Charges))

# Now, create the histogram
hist(Data$Charges, main='Histogram of Charges', xlab='Charges', col='steelblue', breaks=12)



# Check the data type of the 'Review' column
print(class(Data$Review))

# Convert 'Review' column to numeric if it's not already
Data$Review <- as.numeric(Data$Review)

# Check the data Review))

# Now, create the histogram
hist(Data$Review, main='Histogram of Review', xlab='Review', col='steelblue', breaks=12)


