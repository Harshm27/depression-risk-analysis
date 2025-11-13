# Load haven
library(haven)

# Define the directory where your files are stored
data_dir <- "/Users/harsh/Downloads/ICPSR_21600"

# Initialize a list to store the datasets
data_list <- list()

# Loop through DS0001 to DS0042
for (i in 1:42) {
  
  # Format the dataset number with leading zeros (e.g., DS0001)
  ds_num <- sprintf("DS%04d", i)
  
  # Build the correct file name (note the difference in pattern)
  if (i < 10) {
    file_name <- paste0("21600-000", i, "-Data.dta")
  } else {
    file_name <- paste0("21600-00", i, "-Data.dta")
  }
  
  # Build the full file path
  file_path <- file.path(data_dir, ds_num, file_name)
  
  # Print progress (optional)
  cat("Reading:", file_path, "\n")
  
  # Check if the file exists to avoid crashing
  if (file.exists(file_path)) {
    data_list[[ds_num]] <- read_dta(file_path)
  } else {
    cat("File not found:", file_path, "\n")
  }
}

# Optional: Check the loaded datasets
names(data_list)



# List of target variables
target_vars <- c(
  "H3ID15", "H3SP12", "H3HS22",
  "H3DA15", "H3FS12", "H3FS11", "H3TO135", "H3SP6", "H3DS7",
  "H3DA28", "H3LM27", "H3EC7", "H3EC3", "H3DA36", "H3EC54", "H3EC26", "H3EC38",
  "H3WP46", "H3WP53", "H3WP57", "H3OD9",
  "H3TO32", "FIMONDEV",
  "BIO_SEX3", "H3OD4A", "SCH_S1"
)

# Initialize variable map
var_ds_map <- setNames(vector("list", length(target_vars)), target_vars)

# Loop through DS0001 to DS0042
for (i in 1:42) {
  ds_num <- sprintf("DS%04d", i)
  file_name <- if (i < 10) {
    paste0("21600-000", i, "-Data.dta")
  } else {
    paste0("21600-00", i, "-Data.dta")
  }
  file_path <- file.path(data_dir, ds_num, file_name)
  
  if (file.exists(file_path)) {
    cat("Checking:", ds_num, "\n")
    df <- read_dta(file_path)
    present_vars <- intersect(names(df), target_vars)
    for (var in present_vars) {
      var_ds_map[[var]] <- c(var_ds_map[[var]], ds_num)
    }
  }
}

# Convert to a clean data frame
var_ds_df <- data.frame(
  Variable = names(var_ds_map),
  Found_in_Datasets = sapply(var_ds_map, function(x) {
    if (length(x) == 0) "Not Found" else paste(x, collapse = ", ")
  }),
  stringsAsFactors = FALSE
)

# View result
print(var_ds_df)


wave3_data <- read_dta("/Users/harsh/Downloads/ICPSR_21600/DS0008/21600-0008-Data.dta")
vars <- c("AID", "H3ID15", "H3SP12", "H3HS22", "H3DA15", "H3FS12", "H3FS11", 
          "H3TO135", "H3SP6", "H3DS7", "H3DA28", "H3LM27", "H3EC7", "H3EC3", 
          "H3DA36", "H3EC54", "H3EC26", "H3EC38", "H3WP46", "H3WP53", 
          "H3WP57", "H3OD9", "H3TO32", "BIO_SEX3", "H3OD4A")

data_subset <- wave3_data[ , vars]

str(data_subset)
summary(data_subset)
colSums(is.na(data_subset))

cleaned_data <- na.omit(data_subset)

write.csv(cleaned_data, "cleaned_addhealth_data.csv", row.names = FALSE)


#Relabelling

## Target Variable

# Recode depression diagnosis (binary)
cleaned_data$H3ID15_recode <- ifelse(cleaned_data$H3ID15 %in% c(0, 1),
                                     cleaned_data$H3ID15, NA)

# Convert to labeled factor (optional but useful for plotting and modeling)
cleaned_data$H3ID15_recode <- factor(cleaned_data$H3ID15_recode,
                                     levels = c(0, 1),
                                     labels = c("No Depression", "Diagnosed Depression"))


# Friends & Family

# Recode H3ID15 – Have you ever been diagnosed with depression?
# 1 = Yes (Diagnosed Depression), 0 = No, all others = NA
cleaned_data$H3ID15_recode <- ifelse(cleaned_data$H3ID15 %in% c(0, 1),
                                     cleaned_data$H3ID15, NA)

# Label as factor
cleaned_data$H3ID15_recode <- factor(cleaned_data$H3ID15_recode,
                                     levels = c(0, 1),
                                     labels = c("No Depression", "Diagnosed Depression"))



# Recode H3FS12 – Who influenced you more: friends or family?
# 1 = Friends, 2 = Family, all others = NA
cleaned_data$H3FS12_recode <- ifelse(cleaned_data$H3FS12 %in% c(1, 2),
                                     cleaned_data$H3FS12, NA)

# Convert to labeled factor
cleaned_data$H3FS12_recode <- factor(cleaned_data$H3FS12_recode,
                                     levels = c(1, 2),
                                     labels = c("Friends more influential", "Family more influential"))







