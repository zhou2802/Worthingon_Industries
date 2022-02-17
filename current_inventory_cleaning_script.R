library("tidyverse")

# Import Data
df <- read.csv("Data/current_inventory.csv")

# Change to Standard Column Names
colnames(df) <- c("plant_ID", "customer_ID", "market_code", "material_type_ID", "available_tons")

# Clean Data and Output Result
df %>%
  mutate(
    plant_ID = as.integer(gsub("Plant_", "", plant_ID)),
    customer_ID = as.integer(gsub("Customer_", "", customer_ID)),
    market_code = as.integer(gsub("Primary_Market_Code_", "", market_code)),
    material_type_ID = as.integer(gsub("Material_Type_", "", material_type_ID))
  ) %>%
  write.csv("Cleaned_Data/clean_current_inventory")