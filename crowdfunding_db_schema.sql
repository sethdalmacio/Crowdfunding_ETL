CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory_name VARCHAR(100) NOT NULL,
    category_id VARCHAR(10) REFERENCES category(category_id)
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(200) NOT NULL
);

CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT REFERENCES contacts(contact_id),
    company_name VARCHAR(300) NOT NULL,
    description TEXT,
    goal DECIMAL,
    pledged DECIMAL,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(15),
    launch_date TIMESTAMP,
    end_date TIMESTAMP,
    category_id VARCHAR(10) REFERENCES category(category_id),
    subcategory_id VARCHAR(10) REFERENCES subcategory(subcategory_id)
);



