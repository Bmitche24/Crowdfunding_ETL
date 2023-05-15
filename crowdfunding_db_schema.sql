-- Create the Category table
CREATE TABLE category (
    category_id varchar (100)   NOT NULL,
    category varchar (100)  NOT NULL,
	primary key (category_id)
);

-- Create the Subcategory table
CREATE TABLE subcategory (
    subcategory_id varchar (100)  NOT NULL,
    subcategory varchar (100)  NOT NULL,
	primary key (subcategory_id)
);

-- Create the Contacts table
CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar (100)  NOT NULL,
    last_name varchar (100)  NOT NULL,
    email varchar (100)  NOT NULL,
	primary key (contact_id)
);


-- Create the Campaign table
CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar (100)  NOT NULL,
    description varchar (100)  NOT NULL,
    goal double NOT NULL,
    pledged double NOT NULL,
    outcome varchar (100)  NOT NULL,
    backers_count int   NOT NULL,
    country varchar (100)  NOT NULL,
    currency varchar (100)  NOT NULL,
    launch_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar (100)  NOT NULL,
    subcategory_id varchar (100)  NOT NULL,
	primary key (cf_id),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id)
);
