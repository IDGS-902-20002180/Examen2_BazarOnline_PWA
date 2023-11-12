use bazarDB;


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Title NVARCHAR(255),
    Description NVARCHAR(MAX),
    Price DECIMAL(10, 2),
    DiscountPercentage DECIMAL(5, 2),
    Rating DECIMAL(3, 2),
    Stock INT,
    Brand NVARCHAR(100),
    Category NVARCHAR(100),
    ThumbnailUrl NVARCHAR(MAX)
);

CREATE TABLE ProductImages (
    ImageID INT PRIMARY KEY,
    ProductID INT,
    ImageUrl NVARCHAR(MAX),
    FOREIGN KEY (ProductID) REFERENCES Products (ProductID)
);
