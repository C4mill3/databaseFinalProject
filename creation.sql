CREATE TABLE "Customer" (
  "id" SERIAL PRIMARY KEY,

  "name" VARCHAR(255),
  "email" VARCHAR(255),
  "address" TEXT
);


CREATE TABLE "Seller" (
  "id" SERIAL PRIMARY KEY,

  "name" VARCHAR(255),
  "email" VARCHAR(255),
  "address" TEXT,
  "benefits" DECIMAL(10, 2),
  "rating" INTEGER NOT NULL DEFAULT 0 CHECK ("rating" BETWEEN 1 AND 5)
);

CREATE TABLE "Deliverers_Society" (
  "id" SERIAL PRIMARY KEY,

  "name" VARCHAR(255),
  "email" VARCHAR(255),
  "address" TEXT,
  "cost" DECIMAL(10, 2),
  "rating" INTEGER NOT NULL DEFAULT 0 CHECK ("rating" BETWEEN 1 AND 5)
);



CREATE TABLE "Product" (
  "id" SERIAL PRIMARY KEY,

  "seller_id" INTEGER REFERENCES "Seller"("id"),

  "title" VARCHAR(255),
  "description" TEXT,
  "price" DECIMAL(10, 2),
  "category" VARCHAR(50),
  "tags" TEXT
);

CREATE TABLE "Order" (
  "id" SERIAL PRIMARY KEY,

  "customer_id" INTEGER REFERENCES "Customer"("id"),  

  "order_date" DATE NOT NULL DEFAULT CURRENT_DATE,
  "cost" DECIMAL(10, 2) NOT NULL
);

CREATE TABLE "Delivery" (
  "id" SERIAL PRIMARY KEY,

  "deliverer_id" INTEGER REFERENCES "Deliverers_Society"("id"),
  "order_id" INTEGER REFERENCES "Order"("id"),

  "status" VARCHAR(20) NOT NULL CHECK ("status" IN  ('Shipping', 'Delivered', 'Delayed', 'Cancelled')),
  "delivery_date" DATE
);

CREATE TABLE "Payment" (
  "id" SERIAL PRIMARY KEY,

  "order_id" INTEGER REFERENCES "Order"("id"),

  "payment_method" VARCHAR(20),
  "amount" DECIMAL(10, 2) NOT NULL
);

CREATE TABLE "Order_Items" (
  "id" SERIAL PRIMARY KEY,

  "product_id" INTEGER REFERENCES "Product"("id"),
  "order_id" INTEGER REFERENCES "Order"("id"),

  "quantity" INTEGER NOT NULL DEFAULT 1
);