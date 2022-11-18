CREATE TABLE Item 
(
	ItemNum				              NUMBER CONSTRAINT ItemNum_Null NOT NULL,
	ItemDescription			        VARCHAR2(200),
	CONSTRAINT Item_PK	        PRIMARY KEY(ItemNum)
);

CREATE TABLE Product 
(
	ProductId				            NUMBER,
	ProductDescription			    VARCHAR2(200),
	CONSTRAINT Product_PK		    PRIMARY KEY(ProductId)
);

CREATE TABLE Receipt 
(
	SalesDate				            DATE,
	ReciptNumber				        NUMBER CONSTRAINT ReciptNumber_Null NOT NULL,
	CONSTRAINT Receipt_PK		    PRIMARY KEY(ReciptNumber)
);

CREATE TABLE ProdItem 
(
	ProductId				            NUMBER,
	ItemNum				              NUMBER CONSTRAINT ItemNum_Null NOT NULL,
	QuantityUsed				        NUMBER,
	CONSTRAINT ProdItem_PK	    PRIMARY KEY(ProductId, ItemNum), 
  CONSTRAINT ProdItem_FK1	    FOREIGN KEY(ProductId) REFERENCES Product(ProductId),
  CONSTRAINT ProdItem_FK2	    FOREIGN KEY(ItemNum) REFERENCES Item(ItemNum),
  CONSTRAINT QuantityUsed_CK	CHECK(QuantityUsed >= 0)	
);

CREATE TABLE ProdRec 
(
	ProductId				            NUMBER,
	ReciptNumber				        NUMBER CONSTRAINT ReciptNumber_Null NOT NULL,
	QuantitySold				        NUMBER,
	CONSTRAINT ProdRec_PK		    PRIMARY KEY(ProductId, ReciptNumber),
	CONSTRAINT ProdRec_FK1	    FOREIGN KEY(ProductId) REFERENCES Product(ProductId),
CONSTRAINT ProdRec_FK2	      FOREIGN KEY(ReciptNumber) REFERENCES Receipt(ReciptNumber),
CONSTRAINT QuantitySold_CK	  CHECK (QuantitySold >= 0)
);
