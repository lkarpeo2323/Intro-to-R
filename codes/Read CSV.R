#Read CSV

text_file = read.table("Amazon.txt",header=TRUE)
csv_file = read.csv("Amazon.csv",header=TRUE)
print(csv_file)
