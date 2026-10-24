# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "9224538e-f6ce-48dd-92c2-92a9e608ff43",
# META       "default_lakehouse_name": "fab_lh",
# META       "default_lakehouse_workspace_id": "87c91c6f-ba99-4b70-ac91-3ecdaf3a37a0",
# META       "known_lakehouses": [
# META         {
# META           "id": "9224538e-f6ce-48dd-92c2-92a9e608ff43"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!
df = spark.sql("Select * from dbo.public_holidays")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

display(df)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
