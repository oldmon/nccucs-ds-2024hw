# Install the here package if not already installed
#if (!requireNamespace("here", quietly = TRUE)) {
#	install.packages("here")
#}

# Load the here package
#library(here)

# Set the working directory to the script's directory
#setwd(here::here())
summary <- function(input_path, output_path) {
	data <- read.csv(input_path)
	#Extract file name (without extension)by Google gemini
	#'R language, I want the extract filename , how should I do?'
	setname <- tools::file_path_sans_ext(basename(input_path))
	#Find the max values for weight & height, round to two decimals
	maxweight <- round(max(data$weight), 2)
	maxheight <- round(max(data$height), 2)
	#Output data frame
	out <- data.frame(set=setname,weight=maxweight,height=maxheight)
	#Write to CSV file by Google gemini
	#'R landuage, I want the output file without Quotation marks, how should I do?'
	write.csv(out,output_path,row.names=FALSE,quote=FALSE)
}

 #summary("./example/input3.csv", "./example/output3_test.csv")
