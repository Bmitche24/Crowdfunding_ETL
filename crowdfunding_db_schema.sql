-- Create the Category table
CREATE TABLE Category (
  category_id VARCHAR PRIMARY KEY,
  category VARCHAR
);

-- Create the Subcategory table
CREATE TABLE Subcategory (
  subcategory_id VARCHAR PRIMARY KEY,
  subcategory VARCHAR
);

-- Create the Contacts table
CREATE TABLE Contacts (
  contact_id INT PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  email VARCHAR
);

-- Create the Campaign table
CREATE TABLE Campaign (
  cf_id INT PRIMARY KEY,
  contact_id INT REFERENCES Contacts(contact_id),
  company_name VARCHAR,
  description VARCHAR,
  goal DOUBLE PRECISION,
  pledged DOUBLE PRECISION,
  outcome VARCHAR,
  backers_count INT,
  country VARCHAR,
  currency VARCHAR,
  launched_date DATE,
  end_date DATE,
  category_id VARCHAR REFERENCES Category(category_id),
  subcategory_id VARCHAR REFERENCES Subcategory(subcategory_id)
);
