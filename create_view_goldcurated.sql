------------------------
-- CREATE VIEW CUSTOMERS
------------------------
CREATE VIEW goldcurated.customers
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://1projectstorage.blob.core.windows.net/silverprocessed/AdventureWorks_Customers/',
            FORMAT = 'PARQUET'
        ) as QUER1



------------------------
-- CREATE VIEW PRODUCTS
------------------------
CREATE VIEW goldcurated.products
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://1projectstorage.blob.core.windows.net/silverprocessed/AdventureWorks_Products/',
            FORMAT = 'PARQUET'
        ) as QUER1


------------------------
-- CREATE VIEW RETURNS
------------------------
CREATE VIEW goldcurated.returns
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://1projectstorage.blob.core.windows.net/silverprocessed/AdventureWorks_Returns/',
            FORMAT = 'PARQUET'
        ) as QUER1
        



    ------------------------
-- CREATE VIEW SALES
------------------------
CREATE VIEW goldcurated.sales
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://1projectstorage.blob.core.windows.net/silverprocessed/AdventureWorks_Sales/',
            FORMAT = 'PARQUET'
        ) as QUER1


------------------------
-- CREATE VIEW SUBCAT
------------------------
CREATE VIEW goldcurated.subcat
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://1projectstorage.blob.core.windows.net/silverprocessed/AdventureWorks_SUbCategories/',
            FORMAT = 'PARQUET'
        ) as QUER1



------------------------
-- CREATE VIEW TERRITORIES
------------------------
CREATE VIEW goldcurated.territories
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://1projectstorage.blob.core.windows.net/silverprocessed/AdventureWorks_Territories/',
            FORMAT = 'PARQUET'
        ) as QUER1