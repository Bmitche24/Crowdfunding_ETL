# ETL Mini-Project: Analyzing Crowdfunding Data and Creating a Database

# Overview
In this project, we analyzed data about crowdfunding campaigns, then created a database. To complete our inital cleaning and analysis, we used Pandas in a Jupyter Notebook, and we created our database in SQL. 

# Instructions
Be sure to have Pandas, SQL, and pgAdmin4 on your local machine. Clone the code from this repository onto your local machine, then run it in a Jupyter Notebook or in pgAdmin, respectively. 

# Features

The Jupyter Notebook code begins by reading in an Excel file, including the crowdfunding data that we were asked to clean and analyze. Then, it provides the columns and the types of data included in the spreadsheet. Next, we had to use a 'str.split' function to divide the 'category/subcategory' column into two new columns, using the forward slash ('/') to divide the two new columns. Finally, in that section, 9 numbers are generated to represent the 9 categories, and 24 numbers are generated to represent the 24 subcategories. Using a list comprehension, the prefixes 'cat' and 'subcat' are attached to these numbers, using the following code: 

    # Use a list comprehension to add "cat" to each category_id. 
    # Add "cat" and "subcat" prefixes using list comprehensions.
    cat_ids = ["cat" + str(cat_id) for cat_id in category_ids]

    # Use a list comprehension to add "subcat" to each subcategory_id.    
    subcat_ids = ["subcat" + str(subcat_id) for subcat_id in subcategory_ids]
    
In the code, we generated two DataFrames to show which cat_id matched which category and which subcat_id matched which subcategory. These DataFrames are exported to .csv files in a later cell of the Jupyter Notebook.

Using simple tools provided in Pandas, the columns are then renamed to better describe what they contain, and several of the columns are converted to floats and datetime. 

Next, the Jupyter Notebook turns to cleaning and analyzing strings of contact data, which first need to be separated before it can be placed in DataFrame columns. The following code accomplishes this:

    #separate strings into data
    contact_info_df['contact_id'] = contact_info_df['contact_info'].apply(lambda x: json.loads(x)['contact_id'])
    contact_info_df['name'] = contact_info_df['contact_info'].apply(lambda x: json.loads(x)['name'])
    contact_info_df['email'] = contact_info_df['contact_info'].apply(lambda x: json.loads(x)['email'])

    # Drop the 'contact_info' column from initial DF
    contact_info_df.drop('contact_info', axis=1, inplace=True)

    # Print the updated DataFrame
    contact_info_df
    
A 'str.split' function then separates first and last names in each row. Finally, the cleaned contact data is exported to a .csv.

Once the Jupyter Notebook was completed, we created an ERD sketch based on the CSV files that were generated from the code in Jupyter Notebook. We then created a table schema based on the ERD for each CSV file. 

A new Postgres database was then created based on the table schema. The tables have to be created in the correct order to handle the foreign keys. THe CSV files were then imported to each table in the correct order. Confirmed the tables were created and imported correctly. 

# Acknowledgements
This data was provided by the edX Data Visualization and Analytics Bootcamp at The Ohio State University, which generated the source data itself.

# Authors
Bre Mitchell and Daniel Adamson
