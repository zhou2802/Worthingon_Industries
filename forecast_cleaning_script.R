library("tidyverse")

# Import Data
df <- read.csv("Data/forecast.csv")

# Change to Standard Column Names
colnames(df) <- c(
  "year", "month", "plant_ID", "customer_ID", "material_type_ID", "market_code", "final_fc", "_2_month_lag_fc", "_1_month_lag_fc"
)

# Clean Data and Output Result
df %>%
  mutate(
    plant_ID = as.integer(gsub("Plant_", "", plant_ID)),
    customer_ID = as.integer(gsub("Customer_", "", customer_ID)),
    market_code = as.integer(gsub("Primary_Market_Code_", "", market_code)),
    material_type_ID = as.integer(gsub("Material_Type_", "", material_type_ID)),
    month = ifelse(month == "January", 1,
                   ifelse(month == "February", 2,
                          ifelse(month == "March", 3,
                                 ifelse(month == "April", 4,
                                        ifelse(month == "May", 5,
                                               ifelse(month == "June", 6,
                                                      ifelse(month == "July", 7,
                                                             ifelse(month == "August", 8,
                                                                    ifelse(month == "September", 9,
                                                                           ifelse(month == "October", 10,
                                                                                  ifelse(month == "November", 11, 12)
                                                                           )
                                                                    )
                                                             )
                                                      )
                                               )
                                        )
                                 )
                          )
                   )
    )
  ) %>%
  write.csv("Cleaned_Data/clean_forecast.csv")