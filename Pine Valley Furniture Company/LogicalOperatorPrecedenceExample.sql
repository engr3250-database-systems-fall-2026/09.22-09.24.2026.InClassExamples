use pvfc;

-- output will include a computer desk with a price of $250 because of the precedence of AND over OR
SELECT ProductDescription, ProductFinish, ProductStandardPrice
    FROM Product_T
    WHERE ProductDescription LIKE '%Desk'
    OR ProductDescription LIKE '%Table'
    AND ProductStandardPrice > 300;

-- output will be correct after using parenthesis to get all desks and tables FIRST
SELECT ProductDescription, ProductFinish, ProductStandardPrice
    FROM Product_T
    WHERE (ProductDescription LIKE '%Desk'
    OR ProductDescription LIKE '%Table')
    AND ProductStandardPrice > 300;