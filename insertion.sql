INSERT INTO "Customer" ("id", "name", "email", "address") VALUES
  (567, 'Peter Parker', 'peter.parker@example.com', '20 Ingram Street, New York, NY'),
  (568, 'Tony Stark', 'tony.stark@example.com', '10880 Malibu Point, Malibu, CA'),
  (569, 'Wade Wilson', 'deadpool@example.com', '1234 Chimichanga Lane, Mexico'),
  (570, 'Solanum Nomai', 'solanum.nomai@example.com', 'Outer Wilds, Space'),
  (571, 'Rihanna', 'rihanna@example.com', '123 Music Lane, Barbados');

INSERT INTO "Seller" ("id", "name", "email", "address", "benefits", "rating") VALUES
  (123, 'Sony', 'sony@example.com', '123 Main Street', 1000.00, 4),
  (231, 'Lucasfilm', 'lucasfilm@example.com', '456 Elm Street', 500.00, 3),
  (761, 'Microsoft', 'def.co@example.com', '789 Oak Street', 2000.00, 5);

INSERT INTO "Deliverers_Society" ("id", "name", "email", "address", "cost", "rating") VALUES
  (1, 'FedEx Express', 'fedex@example.com', 'Croatia', 10.00, 4),
  (2, 'United Parcel Service', 'ups@example.com', 'Mars', 15.00, 3),
  (3, 'Amazon', 'amazon@example.com', 'U.S', 20.00, 5);

INSERT INTO "Product" ("id", "seller_id", "title", "description", "price", "category", "tags") VALUES
  (921, 123, 'Outer Wilds', 'World Best Experience', 49.99, 'Video Game', 'action, adventure, exploration'),
  (922, 123, 'Minecraft', 'A creative sandbox game where you can build, mine, and survive in a blocky world.', 26.99, 'Video Game', 'sandbox, building, multiplayer'),
  (923, 231, 'Dead Cells', 'A rogue-lite, metroidvania inspired action-platformer with challenging gameplay and an engaging storyline.', 59.99, 'Video Game', 'action, adventure, roguelike'),
  (924, 761, 'USB Flash Drive', 'Reliable 16GB USB flash drive, perfect for storing and transferring your important files.', 15.99, 'Accessory', 'storage, tech, USB'),
  (925, 231, 'Chair', 'Ergonomically designed office chair for maximum comfort during long hours of work or gaming.', 79.99, 'Furniture', 'home, office, seating');

INSERT INTO "Order" ("id", "customer_id", "order_date", "cost") VALUES
  (981, 567, '2024-01-01', 49.99),
  (567, 570, '2024-09-15', 53.98),
  (451, 568, '2024-09-15', 319.96),
  (862, 567, '2024-12-01', 75.98);


INSERT INTO "Order_Items" ("product_id", "order_id", "quantity") VALUES
  (921, 981, 1),  -- Outer Wilds *1
  (922, 567, 2),  -- Minecraft *2
  (925, 451, 4),  -- Chair *4
  (923, 862, 1),  -- Dead Cells
  (924, 862, 1);  -- USB Flash Drive


INSERT INTO "Payment" ("order_id", "payment_method", "amount") VALUES
  (981, 'Credit Card', 49.99),
  (567, 'PayPal', 53.98),
  (451, 'Check', 319.96),
  (862, 'Credit Card', 75.98);

INSERT INTO "Delivery" ("deliverer_id", "order_id", "status", "delivery_date") VALUES
  (1, 981, 'Delivered', '2024-01-05'),
  (2, 567, 'Shipping', '2024-09-20'),
  (3, 451, 'Delivered', '2024-09-18'),
  (1, 862, 'Delayed', '2025-09-05');