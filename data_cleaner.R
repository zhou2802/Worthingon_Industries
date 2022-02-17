library("tidyverse")

#--------------------------------------------------------------------------------------------------------------------------
# Bookings
clean_bookings <- read.csv("Data/bookings.csv")
colnames(clean_bookings) <- c(
  "year", "month", "plant_ID", "customer_ID", "market_code", "material_type_ID", "booked_tons"
)
clean_bookings <- clean_bookings %>%
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
  )
clean_bookings %>% write.csv("Cleaned_Data/clean_bookings.csv")

#--------------------------------------------------------------------------------------------------------------------------
# Current Inventory
clean_current_inventory <- read.csv("Data/current_inventory.csv")
colnames(clean_current_inventory) <- c(
  "plant_ID", "customer_ID", "market_code", "material_type_ID", "available_tons"
)
clean_current_inventory <- clean_current_inventory %>%
  mutate(
    plant_ID = as.integer(gsub("Plant_", "", plant_ID)),
    customer_ID = as.integer(gsub("Customer_", "", customer_ID)),
    market_code = as.integer(gsub("Primary_Market_Code_", "", market_code)),
    material_type_ID = as.integer(gsub("Material_Type_", "", material_type_ID))
  )
clean_current_inventory %>% write.csv("Cleaned_Data/clean_current_inventory.csv")

#--------------------------------------------------------------------------------------------------------------------------
# Forecast
clean_forecast <- read.csv("Data/forecast.csv")
colnames(clean_forecast) <- c(
  "year", "month", "plant_ID", "customer_ID", "material_type_ID", "market_code", "final_fc", "_2_month_lag_fc", "_1_month_lag_fc"
)
clean_forecast <- clean_forecast %>%
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
  )
clean_forecast %>% write.csv("Cleaned_Data/clean_forecast.csv")

#--------------------------------------------------------------------------------------------------------------------------
# Inventory Trends
clean_inventory_trends <- read.csv("Data/inventory_trends.csv")
colnames(clean_inventory_trends) <- c(
  "year", "month", "plant_ID", "customer_ID", "market_code", "material_type_ID", "available_tons"
)
clean_inventory_trends <- clean_inventory_trends %>%
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
  )
clean_inventory_trends %>% write.csv("Cleaned_Data/clean_inventory_trends.csv")

#--------------------------------------------------------------------------------------------------------------------------
# Shipments
clean_shipments <- read.csv("Data/shipments.csv")
colnames(clean_shipments) <- c(
  "year", "month", "plant_ID", "customer_ID", "market_code", "material_type_ID", "shipped_tons"
)
clean_shipments <- clean_shipments %>%
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
  )
clean_shipments %>% write.csv("Cleaned_Data/clean_shipments.csv")

#--------------------------------------------------------------------------------------------------------------------------
# Create .RData Object
save(
  clean_bookings,
  clean_current_inventory,
  clean_forecast,
  clean_inventory_trends,
  clean_shipments,
  file = "clean_data.RData"
)
