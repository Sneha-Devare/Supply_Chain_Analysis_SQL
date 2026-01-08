# CREATING DATABASE SUPPLY CHAIN ANALYSIS
CREATE DATABASE supply_chain_analysis;
USE supply_chain_analysis;

# CREATING TABLE PRODUCTS
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10,2)
);

# CREATING TABLE WAREHOUSES
CREATE TABLE warehouses (
    warehouse_id INT PRIMARY KEY AUTO_INCREMENT,
    warehouse_location VARCHAR(100)
);

# CREATING TABLE SUPPLIERS
CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100),
    on_time_delivery_rate DECIMAL(5,2)
);

# CREATING TABLE PURCHASE ORDERS
CREATE TABLE purchase_orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    supplier_id INT,
    order_date DATE,
    expected_delivery_date DATE,
    actual_delivery_date DATE,
    order_quantity INT,
    unit_cost DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id) ON DELETE CASCADE ON UPDATE CASCADE
);

# CREATING TABLE INVENTORY
CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    warehouse_id INT,
    date DATE,
    opening_stock INT,
    quantity_received INT,
    quantity_sold INT,
    closing_stock INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (warehouse_id) REFERENCES warehouses(warehouse_id) ON DELETE CASCADE ON UPDATE CASCADE
);

# INSERTING 1000 RECORDS INTO PRODUCTS
INSERT INTO products VALUES (1, 'Product_1', 'Category_1', 51);
INSERT INTO products VALUES (2, 'Product_2', 'Category_2', 52);
INSERT INTO products VALUES (3, 'Product_3', 'Category_3', 53);
INSERT INTO products VALUES (4, 'Product_4', 'Category_4', 54);
INSERT INTO products VALUES (5, 'Product_5', 'Category_0', 55);
INSERT INTO products VALUES (6, 'Product_6', 'Category_1', 56);
INSERT INTO products VALUES (7, 'Product_7', 'Category_2', 57);
INSERT INTO products VALUES (8, 'Product_8', 'Category_3', 58);
INSERT INTO products VALUES (9, 'Product_9', 'Category_4', 59);
INSERT INTO products VALUES (10, 'Product_10', 'Category_0', 60);
INSERT INTO products VALUES (11, 'Product_11', 'Category_1', 61);
INSERT INTO products VALUES (12, 'Product_12', 'Category_2', 62);
INSERT INTO products VALUES (13, 'Product_13', 'Category_3', 63);
INSERT INTO products VALUES (14, 'Product_14', 'Category_4', 64);
INSERT INTO products VALUES (15, 'Product_15', 'Category_0', 65);
INSERT INTO products VALUES (16, 'Product_16', 'Category_1', 66);
INSERT INTO products VALUES (17, 'Product_17', 'Category_2', 67);
INSERT INTO products VALUES (18, 'Product_18', 'Category_3', 68);
INSERT INTO products VALUES (19, 'Product_19', 'Category_4', 69);
INSERT INTO products VALUES (20, 'Product_20', 'Category_0', 70);
INSERT INTO products VALUES (21, 'Product_21', 'Category_1', 71);
INSERT INTO products VALUES (22, 'Product_22', 'Category_2', 72);
INSERT INTO products VALUES (23, 'Product_23', 'Category_3', 73);
INSERT INTO products VALUES (24, 'Product_24', 'Category_4', 74);
INSERT INTO products VALUES (25, 'Product_25', 'Category_0', 75);
INSERT INTO products VALUES (26, 'Product_26', 'Category_1', 76);
INSERT INTO products VALUES (27, 'Product_27', 'Category_2', 77);
INSERT INTO products VALUES (28, 'Product_28', 'Category_3', 78);
INSERT INTO products VALUES (29, 'Product_29', 'Category_4', 79);
INSERT INTO products VALUES (30, 'Product_30', 'Category_0', 80);
INSERT INTO products VALUES (31, 'Product_31', 'Category_1', 81);
INSERT INTO products VALUES (32, 'Product_32', 'Category_2', 82);
INSERT INTO products VALUES (33, 'Product_33', 'Category_3', 83);
INSERT INTO products VALUES (34, 'Product_34', 'Category_4', 84);
INSERT INTO products VALUES (35, 'Product_35', 'Category_0', 85);
INSERT INTO products VALUES (36, 'Product_36', 'Category_1', 86);
INSERT INTO products VALUES (37, 'Product_37', 'Category_2', 87);
INSERT INTO products VALUES (38, 'Product_38', 'Category_3', 88);
INSERT INTO products VALUES (39, 'Product_39', 'Category_4', 89);
INSERT INTO products VALUES (40, 'Product_40', 'Category_0', 90);
INSERT INTO products VALUES (41, 'Product_41', 'Category_1', 91);
INSERT INTO products VALUES (42, 'Product_42', 'Category_2', 92);
INSERT INTO products VALUES (43, 'Product_43', 'Category_3', 93);
INSERT INTO products VALUES (44, 'Product_44', 'Category_4', 94);
INSERT INTO products VALUES (45, 'Product_45', 'Category_0', 95);
INSERT INTO products VALUES (46, 'Product_46', 'Category_1', 96);
INSERT INTO products VALUES (47, 'Product_47', 'Category_2', 97);
INSERT INTO products VALUES (48, 'Product_48', 'Category_3', 98);
INSERT INTO products VALUES (49, 'Product_49', 'Category_4', 99);
INSERT INTO products VALUES (50, 'Product_50', 'Category_0', 100);
INSERT INTO products VALUES (51, 'Product_51', 'Category_1', 101);
INSERT INTO products VALUES (52, 'Product_52', 'Category_2', 102);
INSERT INTO products VALUES (53, 'Product_53', 'Category_3', 103);
INSERT INTO products VALUES (54, 'Product_54', 'Category_4', 104);
INSERT INTO products VALUES (55, 'Product_55', 'Category_0', 105);
INSERT INTO products VALUES (56, 'Product_56', 'Category_1', 106);
INSERT INTO products VALUES (57, 'Product_57', 'Category_2', 107);
INSERT INTO products VALUES (58, 'Product_58', 'Category_3', 108);
INSERT INTO products VALUES (59, 'Product_59', 'Category_4', 109);
INSERT INTO products VALUES (60, 'Product_60', 'Category_0', 110);
INSERT INTO products VALUES (61, 'Product_61', 'Category_1', 111);
INSERT INTO products VALUES (62, 'Product_62', 'Category_2', 112);
INSERT INTO products VALUES (63, 'Product_63', 'Category_3', 113);
INSERT INTO products VALUES (64, 'Product_64', 'Category_4', 114);
INSERT INTO products VALUES (65, 'Product_65', 'Category_0', 115);
INSERT INTO products VALUES (66, 'Product_66', 'Category_1', 116);
INSERT INTO products VALUES (67, 'Product_67', 'Category_2', 117);
INSERT INTO products VALUES (68, 'Product_68', 'Category_3', 118);
INSERT INTO products VALUES (69, 'Product_69', 'Category_4', 119);
INSERT INTO products VALUES (70, 'Product_70', 'Category_0', 120);
INSERT INTO products VALUES (71, 'Product_71', 'Category_1', 121);
INSERT INTO products VALUES (72, 'Product_72', 'Category_2', 122);
INSERT INTO products VALUES (73, 'Product_73', 'Category_3', 123);
INSERT INTO products VALUES (74, 'Product_74', 'Category_4', 124);
INSERT INTO products VALUES (75, 'Product_75', 'Category_0', 125);
INSERT INTO products VALUES (76, 'Product_76', 'Category_1', 126);
INSERT INTO products VALUES (77, 'Product_77', 'Category_2', 127);
INSERT INTO products VALUES (78, 'Product_78', 'Category_3', 128);
INSERT INTO products VALUES (79, 'Product_79', 'Category_4', 129);
INSERT INTO products VALUES (80, 'Product_80', 'Category_0', 130);
INSERT INTO products VALUES (81, 'Product_81', 'Category_1', 131);
INSERT INTO products VALUES (82, 'Product_82', 'Category_2', 132);
INSERT INTO products VALUES (83, 'Product_83', 'Category_3', 133);
INSERT INTO products VALUES (84, 'Product_84', 'Category_4', 134);
INSERT INTO products VALUES (85, 'Product_85', 'Category_0', 135);
INSERT INTO products VALUES (86, 'Product_86', 'Category_1', 136);
INSERT INTO products VALUES (87, 'Product_87', 'Category_2', 137);
INSERT INTO products VALUES (88, 'Product_88', 'Category_3', 138);
INSERT INTO products VALUES (89, 'Product_89', 'Category_4', 139);
INSERT INTO products VALUES (90, 'Product_90', 'Category_0', 140);
INSERT INTO products VALUES (91, 'Product_91', 'Category_1', 141);
INSERT INTO products VALUES (92, 'Product_92', 'Category_2', 142);
INSERT INTO products VALUES (93, 'Product_93', 'Category_3', 143);
INSERT INTO products VALUES (94, 'Product_94', 'Category_4', 144);
INSERT INTO products VALUES (95, 'Product_95', 'Category_0', 145);
INSERT INTO products VALUES (96, 'Product_96', 'Category_1', 146);
INSERT INTO products VALUES (97, 'Product_97', 'Category_2', 147);
INSERT INTO products VALUES (98, 'Product_98', 'Category_3', 148);
INSERT INTO products VALUES (99, 'Product_99', 'Category_4', 149);
INSERT INTO products VALUES (100, 'Product_100', 'Category_0', 150);

# INSERTING 1000 RECORDS INTO WAREHOUSES
INSERT INTO warehouses VALUES (1, 'City_1');
INSERT INTO warehouses VALUES (2, 'City_2');
INSERT INTO warehouses VALUES (3, 'City_3');
INSERT INTO warehouses VALUES (4, 'City_4');
INSERT INTO warehouses VALUES (5, 'City_5');
INSERT INTO warehouses VALUES (6, 'City_6');
INSERT INTO warehouses VALUES (7, 'City_7');
INSERT INTO warehouses VALUES (8, 'City_8');
INSERT INTO warehouses VALUES (9, 'City_9');
INSERT INTO warehouses VALUES (10, 'City_10');
INSERT INTO warehouses VALUES (11, 'City_11');
INSERT INTO warehouses VALUES (12, 'City_12');
INSERT INTO warehouses VALUES (13, 'City_13');
INSERT INTO warehouses VALUES (14, 'City_14');
INSERT INTO warehouses VALUES (15, 'City_15');
INSERT INTO warehouses VALUES (16, 'City_16');
INSERT INTO warehouses VALUES (17, 'City_17');
INSERT INTO warehouses VALUES (18, 'City_18');
INSERT INTO warehouses VALUES (19, 'City_19');
INSERT INTO warehouses VALUES (20, 'City_20');
INSERT INTO warehouses VALUES (21, 'City_21');
INSERT INTO warehouses VALUES (22, 'City_22');
INSERT INTO warehouses VALUES (23, 'City_23');
INSERT INTO warehouses VALUES (24, 'City_24');
INSERT INTO warehouses VALUES (25, 'City_25');
INSERT INTO warehouses VALUES (26, 'City_26');
INSERT INTO warehouses VALUES (27, 'City_27');
INSERT INTO warehouses VALUES (28, 'City_28');
INSERT INTO warehouses VALUES (29, 'City_29');
INSERT INTO warehouses VALUES (30, 'City_30');
INSERT INTO warehouses VALUES (31, 'City_31');
INSERT INTO warehouses VALUES (32, 'City_32');
INSERT INTO warehouses VALUES (33, 'City_33');
INSERT INTO warehouses VALUES (34, 'City_34');
INSERT INTO warehouses VALUES (35, 'City_35');
INSERT INTO warehouses VALUES (36, 'City_36');
INSERT INTO warehouses VALUES (37, 'City_37');
INSERT INTO warehouses VALUES (38, 'City_38');
INSERT INTO warehouses VALUES (39, 'City_39');
INSERT INTO warehouses VALUES (40, 'City_40');
INSERT INTO warehouses VALUES (41, 'City_41');
INSERT INTO warehouses VALUES (42, 'City_42');
INSERT INTO warehouses VALUES (43, 'City_43');
INSERT INTO warehouses VALUES (44, 'City_44');
INSERT INTO warehouses VALUES (45, 'City_45');
INSERT INTO warehouses VALUES (46, 'City_46');
INSERT INTO warehouses VALUES (47, 'City_47');
INSERT INTO warehouses VALUES (48, 'City_48');
INSERT INTO warehouses VALUES (49, 'City_49');
INSERT INTO warehouses VALUES (50, 'City_50');
INSERT INTO warehouses VALUES (51, 'City_51');
INSERT INTO warehouses VALUES (52, 'City_52');
INSERT INTO warehouses VALUES (53, 'City_53');
INSERT INTO warehouses VALUES (54, 'City_54');
INSERT INTO warehouses VALUES (55, 'City_55');
INSERT INTO warehouses VALUES (56, 'City_56');
INSERT INTO warehouses VALUES (57, 'City_57');
INSERT INTO warehouses VALUES (58, 'City_58');
INSERT INTO warehouses VALUES (59, 'City_59');
INSERT INTO warehouses VALUES (60, 'City_60');
INSERT INTO warehouses VALUES (61, 'City_61');
INSERT INTO warehouses VALUES (62, 'City_62');
INSERT INTO warehouses VALUES (63, 'City_63');
INSERT INTO warehouses VALUES (64, 'City_64');
INSERT INTO warehouses VALUES (65, 'City_65');
INSERT INTO warehouses VALUES (66, 'City_66');
INSERT INTO warehouses VALUES (67, 'City_67');
INSERT INTO warehouses VALUES (68, 'City_68');
INSERT INTO warehouses VALUES (69, 'City_69');
INSERT INTO warehouses VALUES (70, 'City_70');
INSERT INTO warehouses VALUES (71, 'City_71');
INSERT INTO warehouses VALUES (72, 'City_72');
INSERT INTO warehouses VALUES (73, 'City_73');
INSERT INTO warehouses VALUES (74, 'City_74');
INSERT INTO warehouses VALUES (75, 'City_75');
INSERT INTO warehouses VALUES (76, 'City_76');
INSERT INTO warehouses VALUES (77, 'City_77');
INSERT INTO warehouses VALUES (78, 'City_78');
INSERT INTO warehouses VALUES (79, 'City_79');
INSERT INTO warehouses VALUES (80, 'City_80');
INSERT INTO warehouses VALUES (81, 'City_81');
INSERT INTO warehouses VALUES (82, 'City_82');
INSERT INTO warehouses VALUES (83, 'City_83');
INSERT INTO warehouses VALUES (84, 'City_84');
INSERT INTO warehouses VALUES (85, 'City_85');
INSERT INTO warehouses VALUES (86, 'City_86');
INSERT INTO warehouses VALUES (87, 'City_87');
INSERT INTO warehouses VALUES (88, 'City_88');
INSERT INTO warehouses VALUES (89, 'City_89');
INSERT INTO warehouses VALUES (90, 'City_90');
INSERT INTO warehouses VALUES (91, 'City_91');
INSERT INTO warehouses VALUES (92, 'City_92');
INSERT INTO warehouses VALUES (93, 'City_93');
INSERT INTO warehouses VALUES (94, 'City_94');
INSERT INTO warehouses VALUES (95, 'City_95');
INSERT INTO warehouses VALUES (96, 'City_96');
INSERT INTO warehouses VALUES (97, 'City_97');
INSERT INTO warehouses VALUES (98, 'City_98');
INSERT INTO warehouses VALUES (99, 'City_99');
INSERT INTO warehouses VALUES (100, 'City_100');

# INSERTING 1000 RECORDS INTO SUPPLIERS TABLE
INSERT INTO suppliers VALUES (1, 'Supplier_1', 71);
INSERT INTO suppliers VALUES (2, 'Supplier_2', 72);
INSERT INTO suppliers VALUES (3, 'Supplier_3', 73);
INSERT INTO suppliers VALUES (4, 'Supplier_4', 74);
INSERT INTO suppliers VALUES (5, 'Supplier_5', 75);
INSERT INTO suppliers VALUES (6, 'Supplier_6', 76);
INSERT INTO suppliers VALUES (7, 'Supplier_7', 77);
INSERT INTO suppliers VALUES (8, 'Supplier_8', 78);
INSERT INTO suppliers VALUES (9, 'Supplier_9', 79);
INSERT INTO suppliers VALUES (10, 'Supplier_10', 80);
INSERT INTO suppliers VALUES (11, 'Supplier_11', 81);
INSERT INTO suppliers VALUES (12, 'Supplier_12', 82);
INSERT INTO suppliers VALUES (13, 'Supplier_13', 83);
INSERT INTO suppliers VALUES (14, 'Supplier_14', 84);
INSERT INTO suppliers VALUES (15, 'Supplier_15', 85);
INSERT INTO suppliers VALUES (16, 'Supplier_16', 86);
INSERT INTO suppliers VALUES (17, 'Supplier_17', 87);
INSERT INTO suppliers VALUES (18, 'Supplier_18', 88);
INSERT INTO suppliers VALUES (19, 'Supplier_19', 89);
INSERT INTO suppliers VALUES (20, 'Supplier_20', 90);
INSERT INTO suppliers VALUES (21, 'Supplier_21', 91);
INSERT INTO suppliers VALUES (22, 'Supplier_22', 92);
INSERT INTO suppliers VALUES (23, 'Supplier_23', 93);
INSERT INTO suppliers VALUES (24, 'Supplier_24', 94);
INSERT INTO suppliers VALUES (25, 'Supplier_25', 95);
INSERT INTO suppliers VALUES (26, 'Supplier_26', 96);
INSERT INTO suppliers VALUES (27, 'Supplier_27', 97);
INSERT INTO suppliers VALUES (28, 'Supplier_28', 98);
INSERT INTO suppliers VALUES (29, 'Supplier_29', 99);
INSERT INTO suppliers VALUES (30, 'Supplier_30', 70);
INSERT INTO suppliers VALUES (31, 'Supplier_31', 71);
INSERT INTO suppliers VALUES (32, 'Supplier_32', 72);
INSERT INTO suppliers VALUES (33, 'Supplier_33', 73);
INSERT INTO suppliers VALUES (34, 'Supplier_34', 74);
INSERT INTO suppliers VALUES (35, 'Supplier_35', 75);
INSERT INTO suppliers VALUES (36, 'Supplier_36', 76);
INSERT INTO suppliers VALUES (37, 'Supplier_37', 77);
INSERT INTO suppliers VALUES (38, 'Supplier_38', 78);
INSERT INTO suppliers VALUES (39, 'Supplier_39', 79);
INSERT INTO suppliers VALUES (40, 'Supplier_40', 80);
INSERT INTO suppliers VALUES (41, 'Supplier_41', 81);
INSERT INTO suppliers VALUES (42, 'Supplier_42', 82);
INSERT INTO suppliers VALUES (43, 'Supplier_43', 83);
INSERT INTO suppliers VALUES (44, 'Supplier_44', 84);
INSERT INTO suppliers VALUES (45, 'Supplier_45', 85);
INSERT INTO suppliers VALUES (46, 'Supplier_46', 86);
INSERT INTO suppliers VALUES (47, 'Supplier_47', 87);
INSERT INTO suppliers VALUES (48, 'Supplier_48', 88);
INSERT INTO suppliers VALUES (49, 'Supplier_49', 89);
INSERT INTO suppliers VALUES (50, 'Supplier_50', 90);
INSERT INTO suppliers VALUES (51, 'Supplier_51', 91);
INSERT INTO suppliers VALUES (52, 'Supplier_52', 92);
INSERT INTO suppliers VALUES (53, 'Supplier_53', 93);
INSERT INTO suppliers VALUES (54, 'Supplier_54', 94);
INSERT INTO suppliers VALUES (55, 'Supplier_55', 95);
INSERT INTO suppliers VALUES (56, 'Supplier_56', 96);
INSERT INTO suppliers VALUES (57, 'Supplier_57', 97);
INSERT INTO suppliers VALUES (58, 'Supplier_58', 98);
INSERT INTO suppliers VALUES (59, 'Supplier_59', 99);
INSERT INTO suppliers VALUES (60, 'Supplier_60', 70);
INSERT INTO suppliers VALUES (61, 'Supplier_61', 71);
INSERT INTO suppliers VALUES (62, 'Supplier_62', 72);
INSERT INTO suppliers VALUES (63, 'Supplier_63', 73);
INSERT INTO suppliers VALUES (64, 'Supplier_64', 74);
INSERT INTO suppliers VALUES (65, 'Supplier_65', 75);
INSERT INTO suppliers VALUES (66, 'Supplier_66', 76);
INSERT INTO suppliers VALUES (67, 'Supplier_67', 77);
INSERT INTO suppliers VALUES (68, 'Supplier_68', 78);
INSERT INTO suppliers VALUES (69, 'Supplier_69', 79);
INSERT INTO suppliers VALUES (70, 'Supplier_70', 80);
INSERT INTO suppliers VALUES (71, 'Supplier_71', 81);
INSERT INTO suppliers VALUES (72, 'Supplier_72', 82);
INSERT INTO suppliers VALUES (73, 'Supplier_73', 83);
INSERT INTO suppliers VALUES (74, 'Supplier_74', 84);
INSERT INTO suppliers VALUES (75, 'Supplier_75', 85);
INSERT INTO suppliers VALUES (76, 'Supplier_76', 86);
INSERT INTO suppliers VALUES (77, 'Supplier_77', 87);
INSERT INTO suppliers VALUES (78, 'Supplier_78', 88);
INSERT INTO suppliers VALUES (79, 'Supplier_79', 89);
INSERT INTO suppliers VALUES (80, 'Supplier_80', 90);
INSERT INTO suppliers VALUES (81, 'Supplier_81', 91);
INSERT INTO suppliers VALUES (82, 'Supplier_82', 92);
INSERT INTO suppliers VALUES (83, 'Supplier_83', 93);
INSERT INTO suppliers VALUES (84, 'Supplier_84', 94);
INSERT INTO suppliers VALUES (85, 'Supplier_85', 95);
INSERT INTO suppliers VALUES (86, 'Supplier_86', 96);
INSERT INTO suppliers VALUES (87, 'Supplier_87', 97);
INSERT INTO suppliers VALUES (88, 'Supplier_88', 98);
INSERT INTO suppliers VALUES (89, 'Supplier_89', 99);
INSERT INTO suppliers VALUES (90, 'Supplier_90', 70);
INSERT INTO suppliers VALUES (91, 'Supplier_91', 71);
INSERT INTO suppliers VALUES (92, 'Supplier_92', 72);
INSERT INTO suppliers VALUES (93, 'Supplier_93', 73);
INSERT INTO suppliers VALUES (94, 'Supplier_94', 74);
INSERT INTO suppliers VALUES (95, 'Supplier_95', 75);
INSERT INTO suppliers VALUES (96, 'Supplier_96', 76);
INSERT INTO suppliers VALUES (97, 'Supplier_97', 77);
INSERT INTO suppliers VALUES (98, 'Supplier_98', 78);
INSERT INTO suppliers VALUES (99, 'Supplier_99', 79);
INSERT INTO suppliers VALUES (100, 'Supplier_100', 80);

# INSERTING 1000 RECORDS INTO TABLE PURCHASE ORDERS
INSERT INTO purchase_orders VALUES (1, 1, 1, '2024-01-01', '2024-01-05', '2024-01-06', 101, 41);
INSERT INTO purchase_orders VALUES (2, 2, 2, '2024-01-01', '2024-01-05', '2024-01-06', 102, 42);
INSERT INTO purchase_orders VALUES (3, 3, 3, '2024-01-01', '2024-01-05', '2024-01-06', 103, 43);
INSERT INTO purchase_orders VALUES (4, 4, 4, '2024-01-01', '2024-01-05', '2024-01-06', 104, 44);
INSERT INTO purchase_orders VALUES (5, 5, 5, '2024-01-01', '2024-01-05', '2024-01-06', 105, 45);
INSERT INTO purchase_orders VALUES (6, 6, 6, '2024-01-01', '2024-01-05', '2024-01-06', 106, 46);
INSERT INTO purchase_orders VALUES (7, 7, 7, '2024-01-01', '2024-01-05', '2024-01-06', 107, 47);
INSERT INTO purchase_orders VALUES (8, 8, 8, '2024-01-01', '2024-01-05', '2024-01-06', 108, 48);
INSERT INTO purchase_orders VALUES (9, 9, 9, '2024-01-01', '2024-01-05', '2024-01-06', 109, 49);
INSERT INTO purchase_orders VALUES (10, 10, 10, '2024-01-01', '2024-01-05', '2024-01-06', 110, 50);
INSERT INTO purchase_orders VALUES (11, 11, 11, '2024-01-01', '2024-01-05', '2024-01-06', 111, 51);
INSERT INTO purchase_orders VALUES (12, 12, 12, '2024-01-01', '2024-01-05', '2024-01-06', 112, 52);
INSERT INTO purchase_orders VALUES (13, 13, 13, '2024-01-01', '2024-01-05', '2024-01-06', 113, 53);
INSERT INTO purchase_orders VALUES (14, 14, 14, '2024-01-01', '2024-01-05', '2024-01-06', 114, 54);
INSERT INTO purchase_orders VALUES (15, 15, 15, '2024-01-01', '2024-01-05', '2024-01-06', 115, 55);
INSERT INTO purchase_orders VALUES (16, 16, 16, '2024-01-01', '2024-01-05', '2024-01-06', 116, 56);
INSERT INTO purchase_orders VALUES (17, 17, 17, '2024-01-01', '2024-01-05', '2024-01-06', 117, 57);
INSERT INTO purchase_orders VALUES (18, 18, 18, '2024-01-01', '2024-01-05', '2024-01-06', 118, 58);
INSERT INTO purchase_orders VALUES (19, 19, 19, '2024-01-01', '2024-01-05', '2024-01-06', 119, 59);
INSERT INTO purchase_orders VALUES (20, 20, 20, '2024-01-01', '2024-01-05', '2024-01-06', 120, 60);
INSERT INTO purchase_orders VALUES (21, 21, 21, '2024-01-01', '2024-01-05', '2024-01-06', 121, 61);
INSERT INTO purchase_orders VALUES (22, 22, 22, '2024-01-01', '2024-01-05', '2024-01-06', 122, 62);
INSERT INTO purchase_orders VALUES (23, 23, 23, '2024-01-01', '2024-01-05', '2024-01-06', 123, 63);
INSERT INTO purchase_orders VALUES (24, 24, 24, '2024-01-01', '2024-01-05', '2024-01-06', 124, 64);
INSERT INTO purchase_orders VALUES (25, 25, 25, '2024-01-01', '2024-01-05', '2024-01-06', 125, 65);
INSERT INTO purchase_orders VALUES (26, 26, 26, '2024-01-01', '2024-01-05', '2024-01-06', 126, 66);
INSERT INTO purchase_orders VALUES (27, 27, 27, '2024-01-01', '2024-01-05', '2024-01-06', 127, 67);
INSERT INTO purchase_orders VALUES (28, 28, 28, '2024-01-01', '2024-01-05', '2024-01-06', 128, 68);
INSERT INTO purchase_orders VALUES (29, 29, 29, '2024-01-01', '2024-01-05', '2024-01-06', 129, 69);
INSERT INTO purchase_orders VALUES (30, 30, 30, '2024-01-01', '2024-01-05', '2024-01-06', 130, 70);
INSERT INTO purchase_orders VALUES (31, 31, 31, '2024-01-01', '2024-01-05', '2024-01-06', 131, 71);
INSERT INTO purchase_orders VALUES (32, 32, 32, '2024-01-01', '2024-01-05', '2024-01-06', 132, 72);
INSERT INTO purchase_orders VALUES (33, 33, 33, '2024-01-01', '2024-01-05', '2024-01-06', 133, 73);
INSERT INTO purchase_orders VALUES (34, 34, 34, '2024-01-01', '2024-01-05', '2024-01-06', 134, 74);
INSERT INTO purchase_orders VALUES (35, 35, 35, '2024-01-01', '2024-01-05', '2024-01-06', 135, 75);
INSERT INTO purchase_orders VALUES (36, 36, 36, '2024-01-01', '2024-01-05', '2024-01-06', 136, 76);
INSERT INTO purchase_orders VALUES (37, 37, 37, '2024-01-01', '2024-01-05', '2024-01-06', 137, 77);
INSERT INTO purchase_orders VALUES (38, 38, 38, '2024-01-01', '2024-01-05', '2024-01-06', 138, 78);
INSERT INTO purchase_orders VALUES (39, 39, 39, '2024-01-01', '2024-01-05', '2024-01-06', 139, 79);
INSERT INTO purchase_orders VALUES (40, 40, 40, '2024-01-01', '2024-01-05', '2024-01-06', 140, 80);
INSERT INTO purchase_orders VALUES (41, 41, 41, '2024-01-01', '2024-01-05', '2024-01-06', 141, 81);
INSERT INTO purchase_orders VALUES (42, 42, 42, '2024-01-01', '2024-01-05', '2024-01-06', 142, 82);
INSERT INTO purchase_orders VALUES (43, 43, 43, '2024-01-01', '2024-01-05', '2024-01-06', 143, 83);
INSERT INTO purchase_orders VALUES (44, 44, 44, '2024-01-01', '2024-01-05', '2024-01-06', 144, 84);
INSERT INTO purchase_orders VALUES (45, 45, 45, '2024-01-01', '2024-01-05', '2024-01-06', 145, 85);
INSERT INTO purchase_orders VALUES (46, 46, 46, '2024-01-01', '2024-01-05', '2024-01-06', 146, 86);
INSERT INTO purchase_orders VALUES (47, 47, 47, '2024-01-01', '2024-01-05', '2024-01-06', 147, 87);
INSERT INTO purchase_orders VALUES (48, 48, 48, '2024-01-01', '2024-01-05', '2024-01-06', 148, 88);
INSERT INTO purchase_orders VALUES (49, 49, 49, '2024-01-01', '2024-01-05', '2024-01-06', 149, 89);
INSERT INTO purchase_orders VALUES (50, 50, 50, '2024-01-01', '2024-01-05', '2024-01-06', 100, 90);
INSERT INTO purchase_orders VALUES (51, 51, 51, '2024-01-01', '2024-01-05', '2024-01-06', 101, 91);
INSERT INTO purchase_orders VALUES (52, 52, 52, '2024-01-01', '2024-01-05', '2024-01-06', 102, 92);
INSERT INTO purchase_orders VALUES (53, 53, 53, '2024-01-01', '2024-01-05', '2024-01-06', 103, 93);
INSERT INTO purchase_orders VALUES (54, 54, 54, '2024-01-01', '2024-01-05', '2024-01-06', 104, 94);
INSERT INTO purchase_orders VALUES (55, 55, 55, '2024-01-01', '2024-01-05', '2024-01-06', 105, 95);
INSERT INTO purchase_orders VALUES (56, 56, 56, '2024-01-01', '2024-01-05', '2024-01-06', 106, 96);
INSERT INTO purchase_orders VALUES (57, 57, 57, '2024-01-01', '2024-01-05', '2024-01-06', 107, 97);
INSERT INTO purchase_orders VALUES (58, 58, 58, '2024-01-01', '2024-01-05', '2024-01-06', 108, 98);
INSERT INTO purchase_orders VALUES (59, 59, 59, '2024-01-01', '2024-01-05', '2024-01-06', 109, 99);
INSERT INTO purchase_orders VALUES (60, 60, 60, '2024-01-01', '2024-01-05', '2024-01-06', 110, 40);
INSERT INTO purchase_orders VALUES (61, 61, 61, '2024-01-01', '2024-01-05', '2024-01-06', 111, 41);
INSERT INTO purchase_orders VALUES (62, 62, 62, '2024-01-01', '2024-01-05', '2024-01-06', 112, 42);
INSERT INTO purchase_orders VALUES (63, 63, 63, '2024-01-01', '2024-01-05', '2024-01-06', 113, 43);
INSERT INTO purchase_orders VALUES (64, 64, 64, '2024-01-01', '2024-01-05', '2024-01-06', 114, 44);
INSERT INTO purchase_orders VALUES (65, 65, 65, '2024-01-01', '2024-01-05', '2024-01-06', 115, 45);
INSERT INTO purchase_orders VALUES (66, 66, 66, '2024-01-01', '2024-01-05', '2024-01-06', 116, 46);
INSERT INTO purchase_orders VALUES (67, 67, 67, '2024-01-01', '2024-01-05', '2024-01-06', 117, 47);
INSERT INTO purchase_orders VALUES (68, 68, 68, '2024-01-01', '2024-01-05', '2024-01-06', 118, 48);
INSERT INTO purchase_orders VALUES (69, 69, 69, '2024-01-01', '2024-01-05', '2024-01-06', 119, 49);
INSERT INTO purchase_orders VALUES (70, 70, 70, '2024-01-01', '2024-01-05', '2024-01-06', 120, 50);
INSERT INTO purchase_orders VALUES (71, 71, 71, '2024-01-01', '2024-01-05', '2024-01-06', 121, 51);
INSERT INTO purchase_orders VALUES (72, 72, 72, '2024-01-01', '2024-01-05', '2024-01-06', 122, 52);
INSERT INTO purchase_orders VALUES (73, 73, 73, '2024-01-01', '2024-01-05', '2024-01-06', 123, 53);
INSERT INTO purchase_orders VALUES (74, 74, 74, '2024-01-01', '2024-01-05', '2024-01-06', 124, 54);
INSERT INTO purchase_orders VALUES (75, 75, 75, '2024-01-01', '2024-01-05', '2024-01-06', 125, 55);
INSERT INTO purchase_orders VALUES (76, 76, 76, '2024-01-01', '2024-01-05', '2024-01-06', 126, 56);
INSERT INTO purchase_orders VALUES (77, 77, 77, '2024-01-01', '2024-01-05', '2024-01-06', 127, 57);
INSERT INTO purchase_orders VALUES (78, 78, 78, '2024-01-01', '2024-01-05', '2024-01-06', 128, 58);
INSERT INTO purchase_orders VALUES (79, 79, 79, '2024-01-01', '2024-01-05', '2024-01-06', 129, 59);
INSERT INTO purchase_orders VALUES (80, 80, 80, '2024-01-01', '2024-01-05', '2024-01-06', 130, 60);
INSERT INTO purchase_orders VALUES (81, 81, 81, '2024-01-01', '2024-01-05', '2024-01-06', 131, 61);
INSERT INTO purchase_orders VALUES (82, 82, 82, '2024-01-01', '2024-01-05', '2024-01-06', 132, 62);
INSERT INTO purchase_orders VALUES (83, 83, 83, '2024-01-01', '2024-01-05', '2024-01-06', 133, 63);
INSERT INTO purchase_orders VALUES (84, 84, 84, '2024-01-01', '2024-01-05', '2024-01-06', 134, 64);
INSERT INTO purchase_orders VALUES (85, 85, 85, '2024-01-01', '2024-01-05', '2024-01-06', 135, 65);
INSERT INTO purchase_orders VALUES (86, 86, 86, '2024-01-01', '2024-01-05', '2024-01-06', 136, 66);
INSERT INTO purchase_orders VALUES (87, 87, 87, '2024-01-01', '2024-01-05', '2024-01-06', 137, 67);
INSERT INTO purchase_orders VALUES (88, 88, 88, '2024-01-01', '2024-01-05', '2024-01-06', 138, 68);
INSERT INTO purchase_orders VALUES (89, 89, 89, '2024-01-01', '2024-01-05', '2024-01-06', 139, 69);
INSERT INTO purchase_orders VALUES (90, 90, 90, '2024-01-01', '2024-01-05', '2024-01-06', 140, 70);
INSERT INTO purchase_orders VALUES (91, 91, 91, '2024-01-01', '2024-01-05', '2024-01-06', 141, 71);
INSERT INTO purchase_orders VALUES (92, 92, 92, '2024-01-01', '2024-01-05', '2024-01-06', 142, 72);
INSERT INTO purchase_orders VALUES (93, 93, 93, '2024-01-01', '2024-01-05', '2024-01-06', 143, 73);
INSERT INTO purchase_orders VALUES (94, 94, 94, '2024-01-01', '2024-01-05', '2024-01-06', 144, 74);
INSERT INTO purchase_orders VALUES (95, 95, 95, '2024-01-01', '2024-01-05', '2024-01-06', 145, 75);
INSERT INTO purchase_orders VALUES (96, 96, 96, '2024-01-01', '2024-01-05', '2024-01-06', 146, 76);
INSERT INTO purchase_orders VALUES (97, 97, 97, '2024-01-01', '2024-01-05', '2024-01-06', 147, 77);
INSERT INTO purchase_orders VALUES (98, 98, 98, '2024-01-01', '2024-01-05', '2024-01-06', 148, 78);
INSERT INTO purchase_orders VALUES (99, 99, 99, '2024-01-01', '2024-01-05', '2024-01-06', 149, 79);
INSERT INTO purchase_orders VALUES (100, 100, 100, '2024-01-01', '2024-01-05', '2024-01-06', 100, 80);
INSERT INTO purchase_orders VALUES (101, 90, 90, '2024-01-01', '2024-01-31', '2024-01-06', 140, 70);
INSERT INTO purchase_orders VALUES (102, 91, 91, '2024-01-01', '2024-01-31', '2024-01-06', 141, 71);
INSERT INTO purchase_orders VALUES (103, 92, 92, '2024-01-01', '2024-01-31', '2024-01-06', 142, 72);
INSERT INTO purchase_orders VALUES (104, 93, 93, '2024-01-01', '2024-01-31', '2024-01-06', 143, 73);
INSERT INTO purchase_orders VALUES (105, 94, 94, '2024-01-01', '2024-01-31', '2024-01-06', 144, 74);
INSERT INTO purchase_orders VALUES (106, 95, 95, '2024-01-01', '2024-01-31', '2024-01-06', 145, 75);
INSERT INTO purchase_orders VALUES (107, 96, 96, '2024-01-01', '2024-01-31', '2024-01-06', 146, 76);
INSERT INTO purchase_orders VALUES (108, 97, 97, '2024-01-01', '2024-01-31', '2024-01-06', 147, 77);
INSERT INTO purchase_orders VALUES (109, 98, 98, '2024-01-01', '2024-01-31', '2024-01-06', 148, 78);
INSERT INTO purchase_orders VALUES (110, 99, 99, '2024-01-01', '2024-01-31', '2024-01-06', 149, 79);
INSERT INTO purchase_orders VALUES (111, 100, 100, '2024-01-01', '2024-01-31', '2024-01-06', 100, 80);

INSERT INTO inventory VALUES (1001,100,1,'2024-01-10',100,20,120,0);
INSERT INTO inventory VALUES (1002,100,1,'2024-01-10',150,10,160,0);
INSERT INTO inventory VALUES (1003,100,1,'2024-01-10',80,40,120,0);
INSERT INTO inventory VALUES (1004,100,1,'2024-01-10',200,50,250,0);
INSERT INTO inventory VALUES (1005,100,1,'2024-01-10',90,10,100,0);
INSERT INTO inventory VALUES (1006,100,2,'2024-01-11',120,30,150,0);
INSERT INTO inventory VALUES (1007,100,2,'2024-01-11',60,40,100,0);
INSERT INTO inventory VALUES (1008,100,2,'2024-01-11',110,20,130,0);
INSERT INTO inventory VALUES (1009,100,2,'2024-01-11',140,10,150,0);
INSERT INTO inventory VALUES (1010,100,2,'2024-01-11',75,25,100,0);
INSERT INTO inventory VALUES (1011,100,3,'2024-01-12',100,50,150,0);
INSERT INTO inventory VALUES (1012,100,3,'2024-01-12',130,20,150,0);
INSERT INTO inventory VALUES (1013,100,3,'2024-01-12',90,10,100,0);
INSERT INTO inventory VALUES (1014,100,3,'2024-01-12',160,40,200,0);
INSERT INTO inventory VALUES (1015,100,3,'2024-01-12',70,30,100,0);
INSERT INTO inventory VALUES (1016,100,4,'2024-01-13',100,20,120,0);
INSERT INTO inventory VALUES (1017,100,4,'2024-01-13',150,30,180,0);
INSERT INTO inventory VALUES (1018,100,4,'2024-01-13',200,10,210,0);
INSERT INTO inventory VALUES (1019,100,4,'2024-01-13',80,20,100,0);
INSERT INTO inventory VALUES (1020,100,4,'2024-01-13',90,60,150,0);
INSERT INTO inventory VALUES (1021,100,5,'2024-01-14',100,20,120,0);
INSERT INTO inventory VALUES (1022,100,5,'2024-01-14',150,10,160,0);
INSERT INTO inventory VALUES (1023,100,5,'2024-01-14',80,40,120,0);
INSERT INTO inventory VALUES (1024,100,5,'2024-01-14',200,50,250,0);
INSERT INTO inventory VALUES (1025,100,5,'2024-01-14',90,10,100,0);
INSERT INTO inventory VALUES (1026,100,6,'2024-01-15',120,30,150,0);
INSERT INTO inventory VALUES (1027,100,6,'2024-01-15',60,40,100,0);
INSERT INTO inventory VALUES (1028,100,6,'2024-01-15',110,20,130,0);
INSERT INTO inventory VALUES (1029,91,6,'2024-01-15',140,10,150,0);
INSERT INTO inventory VALUES (1030,93,6,'2024-01-15',75,25,100,0);
INSERT INTO inventory VALUES (1031,93,7,'2024-01-16',100,50,150,0);
INSERT INTO inventory VALUES (1032,92,7,'2024-01-16',130,20,150,0);
INSERT INTO inventory VALUES (1033,95,7,'2024-01-16',90,10,100,0);
INSERT INTO inventory VALUES (1034,94,7,'2024-01-16',160,40,200,0);
INSERT INTO inventory VALUES (1035,93,7,'2024-01-16',70,30,100,0);
INSERT INTO inventory VALUES (1036,96,8,'2024-01-17',100,20,120,0);
INSERT INTO inventory VALUES (1037,97,8,'2024-01-17',150,30,180,0);
INSERT INTO inventory VALUES (1038,98,8,'2024-01-17',200,10,210,0);
INSERT INTO inventory VALUES (1039,99,8,'2024-01-17',80,20,100,0);
INSERT INTO inventory VALUES (1040,90,8,'2024-01-17',90,60,150,0);
INSERT INTO inventory VALUES (1041,91,9,'2024-01-18',100,20,120,0);
INSERT INTO inventory VALUES (1042,92,9,'2024-01-18',150,10,160,0);
INSERT INTO inventory VALUES (1043,93,9,'2024-01-18',80,40,120,0);
INSERT INTO inventory VALUES (1044,94,9,'2024-01-18',200,50,250,0);
INSERT INTO inventory VALUES (1045,95,9,'2024-01-18',90,10,100,0);
INSERT INTO inventory VALUES (1046,96,10,'2024-01-19',120,30,150,0);
INSERT INTO inventory VALUES (1047,97,10,'2024-01-19',60,40,100,0);
INSERT INTO inventory VALUES (1048,98,10,'2024-01-19',110,20,130,0);
INSERT INTO inventory VALUES (1049,99,10,'2024-01-19',140,10,150,0);
INSERT INTO inventory VALUES (1050,100,10,'2024-01-19',75,25,100,0);
INSERT INTO inventory VALUES (1051,100,11,'2024-01-20',100,20,120,0);
INSERT INTO inventory VALUES (1052,100,11,'2024-01-20',150,10,160,0);
INSERT INTO inventory VALUES (1053,100,11,'2024-01-20',80,40,120,0);
INSERT INTO inventory VALUES (1054,100,11,'2024-01-20',200,50,250,0);
INSERT INTO inventory VALUES (1055,100,11,'2024-01-20',90,10,100,0);
INSERT INTO inventory VALUES (1056,100,12,'2024-01-21',120,30,150,0);
INSERT INTO inventory VALUES (1057,100,12,'2024-01-21',60,40,100,0);
INSERT INTO inventory VALUES (1058,100,12,'2024-01-21',110,20,130,0);
INSERT INTO inventory VALUES (1059,98,12,'2024-01-21',140,10,150,0);
INSERT INTO inventory VALUES (1060,96,12,'2024-01-21',75,25,100,0);
INSERT INTO inventory VALUES (1061,91,13,'2024-01-22',100,50,150,0);
INSERT INTO inventory VALUES (1062,92,13,'2024-01-22',130,20,150,0);
INSERT INTO inventory VALUES (1063,93,13,'2024-01-22',90,10,100,0);
INSERT INTO inventory VALUES (1064,94,13,'2024-01-22',160,40,200,0);
INSERT INTO inventory VALUES (1065,95,13,'2024-01-22',70,30,100,0);
INSERT INTO inventory VALUES (1066,96,14,'2024-01-23',100,20,120,0);
INSERT INTO inventory VALUES (1067,97,14,'2024-01-23',150,30,180,0);
INSERT INTO inventory VALUES (1068,98,14,'2024-01-23',200,10,210,0);
INSERT INTO inventory VALUES (1069,99,14,'2024-01-23',80,20,100,0);
INSERT INTO inventory VALUES (1070,100,14,'2024-01-23',90,60,150,0);
INSERT INTO inventory VALUES (1071,100,15,'2024-01-24',100,20,120,0);
INSERT INTO inventory VALUES (1072,90,15,'2024-01-24',150,10,160,0);
INSERT INTO inventory VALUES (1073,91,15,'2024-01-24',80,40,120,0);
INSERT INTO inventory VALUES (1074,92,15,'2024-01-24',200,50,250,0);
INSERT INTO inventory VALUES (1075,93,15,'2024-01-24',90,10,100,0);
INSERT INTO inventory VALUES (1076,94,16,'2024-01-25',120,30,150,0);
INSERT INTO inventory VALUES (1077,95,16,'2024-01-25',60,40,100,0);
INSERT INTO inventory VALUES (1078,96,16,'2024-01-25',110,20,130,0);
INSERT INTO inventory VALUES (1079,97,16,'2024-01-25',140,10,150,0);
INSERT INTO inventory VALUES (1080,98,16,'2024-01-25',75,25,100,0);
INSERT INTO inventory VALUES (1081,98,17,'2024-01-26',100,50,150,0);
INSERT INTO inventory VALUES (1082,99,17,'2024-01-26',130,20,150,0);
INSERT INTO inventory VALUES (1083,100,17,'2024-01-26',90,10,100,0);
INSERT INTO inventory VALUES (1084,100,17,'2024-01-26',160,40,200,0);
INSERT INTO inventory VALUES (1085,90,17,'2024-01-26',70,30,100,0);
INSERT INTO inventory VALUES (1086,91,18,'2024-01-27',100,20,120,0);
INSERT INTO inventory VALUES (1087,92,18,'2024-01-27',150,30,180,0);
INSERT INTO inventory VALUES (1088,93,18,'2024-01-27',200,10,210,0);
INSERT INTO inventory VALUES (1089,94,18,'2024-01-27',80,20,100,0);
INSERT INTO inventory VALUES (1090,95,18,'2024-01-27',90,60,150,0);
INSERT INTO inventory VALUES (1091,96,19,'2024-01-28',100,20,120,0);
INSERT INTO inventory VALUES (1092,97,19,'2024-01-28',150,10,160,0);
INSERT INTO inventory VALUES (1093,98,19,'2024-01-28',80,40,120,0);
INSERT INTO inventory VALUES (1094,99,19,'2024-01-28',200,50,250,0);
INSERT INTO inventory VALUES (1095,100,19,'2024-01-28',90,10,100,0);
INSERT INTO inventory VALUES (1096,100,20,'2024-01-29',120,30,150,0);
INSERT INTO inventory VALUES (1097,91,20,'2024-01-29',60,40,100,0);
INSERT INTO inventory VALUES (1098,92,20,'2024-01-29',110,20,130,0);
INSERT INTO inventory VALUES (1099,93,20,'2024-01-29',140,10,150,0);
INSERT INTO inventory VALUES (1100,94,20,'2024-01-29',75,25,100,0);
INSERT INTO inventory VALUES (2001, 95, 1, '2024-02-29', 100, 20, 120, 0);
INSERT INTO inventory VALUES (2002, 96, 1, '2024-02-29', 120, 30, 150, 0);
INSERT INTO inventory VALUES (2003, 97, 1, '2024-02-29', 90, 10, 100, 0);
INSERT INTO inventory VALUES (2004, 98, 1, '2024-02-29', 150, 50, 200, 0);
INSERT INTO inventory VALUES (2005, 98, 1, '2024-02-29', 80, 20, 100, 0);
INSERT INTO inventory VALUES (2006, 99, 1, '2024-02-29', 110, 40, 150, 0);
INSERT INTO inventory VALUES (2007, 100, 1, '2024-02-29', 70, 30, 100, 0);
INSERT INTO inventory VALUES (2008, 91, 1, '2024-02-29', 130, 20, 150, 0);
INSERT INTO inventory VALUES (2009, 92, 1, '2024-02-29', 160, 40, 200, 0);
INSERT INTO inventory VALUES (2010, 93, 1, '2024-02-29', 95, 5, 100, 0);
INSERT INTO inventory VALUES (2011, 95, 1, '2024-02-29', 100, 20, 120, 0);
INSERT INTO inventory VALUES (2012, 96, 1, '2024-02-29', 120, 30, 150, 0);
INSERT INTO inventory VALUES (2013, 97, 1, '2024-02-29', 90, 10, 100, 0);
INSERT INTO inventory VALUES (2014, 98, 1, '2024-02-29', 150, 50, 200, 0);
INSERT INTO inventory VALUES (2015, 98, 1, '2024-02-29', 80, 20, 100, 0);
INSERT INTO inventory VALUES (2016, 99, 1, '2024-02-29', 110, 40, 150, 0);
INSERT INTO inventory VALUES (2017, 100, 1, '2024-02-29', 70, 30, 100, 0);
INSERT INTO inventory VALUES (2018, 91, 1, '2024-02-29', 130, 20, 150, 0);
INSERT INTO inventory VALUES (2019, 92, 1, '2024-02-29', 160, 40, 200, 0);
INSERT INTO inventory VALUES (2020, 93, 1, '2024-02-29', 95, 5, 100, 0);
INSERT INTO inventory VALUES (2021, 95, 1, '2024-01-31', 100, 20, 120, 110);
INSERT INTO inventory VALUES (2022, 96, 1, '2024-01-31', 120, 30, 150, 120);
INSERT INTO inventory VALUES (2023, 97, 1, '2024-01-31', 90, 10, 100, 130);
INSERT INTO inventory VALUES (2024, 98, 1, '2024-01-1', 150, 50, 200, 140);
INSERT INTO inventory VALUES (2025, 98, 1, '2024-01-31', 80, 20, 100, 150);
INSERT INTO inventory VALUES (2026, 99, 1, '2024-01-31', 110, 40, 150, 160);
INSERT INTO inventory VALUES (2027, 100, 1, '2024-01-31', 70, 30, 100, 100);
INSERT INTO inventory VALUES (2028, 91, 1, '2024-01-31', 130, 20, 150, 60);
INSERT INTO inventory VALUES (2029, 92, 1, '2024-01-31', 160, 40, 200, 30);
INSERT INTO inventory VALUES (2030, 93, 1, '2024-01-31', 95, 5, 100, 70);

# RETRIEVING DATA FROM INVENTORY
SELECT * 
FROM inventory;

# RETRIEVING DATA FROM PURCHAE_ORDERS
SELECT * 
FROM purchase_orders;

# RETRIEVING DATA FROM WAREHOUSES
SELECT * 
FROM warehouses;

# RETRIEVING DATA FROM SUPPLIERS
SELECT * 
FROM suppliers;

# RETRIEVING DATA FROM PRODUCTS
SELECT *
FROM products;


--  STOCK-OUT FREQUENCY (PER PRODUCT, PER WAREHOUSE)
--  PER PRODUCT
SELECT product_id, COUNT(*)
FROM inventory
WHERE closing_stock = 0
GROUP BY product_id;

-- PER WAREHOUSE
SELECT warehouse_id, COUNT(*)
FROM inventory
WHERE closing_stock = 0
GROUP BY warehouse_id;

-- AVERAGE CLOSING STOCK
SELECT 
	AVG(closing_stock) 
FROM inventory;

# LIST ALL DATES ON WHICH ANY PRODUCT WENT INTO STOCK-OUT
SELECT 
	DISTINCT Date
FROM inventory 
WHERE closing_stock = 0;

# IDENTIFY THE PRODUCT WITH THE HIGHEST NUMBER OF STOCK OUT DAYS
SELECT 
	Product_ID, 
    Product_Name, 
    Category, 
    Unit_Price
FROM products
WHERE Product_id = (
	SELECT 
		Product_id
	FROM inventory
	WHERE closing_stock = 0
	GROUP BY Product_id
	ORDER BY COUNT(Date) DESC
	LIMIT 1
);

# FIND THE TOTAL NUMBER OF STOCK-OUT EVENTS PER PRODUCT, RANKED IN DESCENDING ORDER
SELECT 
	p.Product_ID, 
    p.Product_Name, 
    COUNT(i.date) Count_of_stock_out_days
FROM inventory i
INNER JOIN  products p
	ON i.product_id = p.product_id
WHERE i.closing_stock = 0
GROUP BY 
	p.product_id, 
    p.product_name
ORDER BY COUNT(i.Date) DESC;

-- IDENTIFY WAREHOUSE–PRODUCT COMBINATIONS WITH THE MOST FREQUENT STOCK-OUTS.
SELECT 
	Warehouse_ID, 
    Product_ID, 
    COUNT(Date) Count_of_stock_out_days
FROM inventory
WHERE closing_stock = 0
GROUP BY 
	warehouse_id, 
    product_id
ORDER BY COUNT(Date) DESC;

-- CALCULATE THE PERCENTAGE OF DAYS EACH PRODUCT WAS IN A STOCK-OUT CONDITION.
SELECT Product_ID, COUNT(Date) AS Stock_out_days, (
        SELECT COUNT(*)
        FROM inventory i2
        WHERE 
			i2.product_id = i.product_id
    ) AS total_days, (COUNT(Date)/(SELECT COUNT(*)
        FROM inventory i2
        WHERE 
			i2.product_id = i.product_id)) * 100 AS Percentage
FROM inventory i
WHERE closing_stock = 0
GROUP BY product_id;

-- DETERMINE PRODUCTS THAT EXPERIENCED STOCK-OUTS FOR MORE THAN 25% OF TOTAL TRACKED DAYS.
SELECT Product_ID, COUNT(Date) AS Stock_out_days, (
        SELECT COUNT(*)
        FROM inventory i2
        WHERE 
			i2.product_id = i.product_id
    ) AS total_days, (COUNT(Date)/(SELECT COUNT(*)
        FROM inventory i2
        WHERE 
			i2.product_id = i.product_id)) * 100 AS Percentage
FROM inventory i
WHERE closing_stock = 0
GROUP BY product_id
HAVING ((COUNT(Date)/(SELECT COUNT(*)
        FROM inventory i2
        WHERE i2.product_id = i.product_id)) * 100 ) > 25;
        
-- IDENTIFY STOCK-OUTS OCCURRING SPECIFICALLY ON WEEKENDS.
SELECT *, DAYNAME(Date)
FROM inventory
WHERE 
	closing_stock = 0 
    AND 
    DAYNAME(Date) IN ('Saturday', 'Sunday');

-- IDENTIFY PRODUCTS THAT NEVER WENT INTO STOCK-OUT
SELECT 
	p.Product_ID, 
    p.Product_Name
FROM products p
WHERE NOT EXISTS (
    SELECT 1
    FROM inventory i
    WHERE i.product_id = p.product_id
      AND i.closing_stock = 0
);

-- DETERMINE WHICH WAREHOUSE HAD THE HIGHEST COUNT OF STOCK-OUT EVENTS.
SELECT 
	Warehouse_ID, 
    Warehouse_Location
FROM warehouses
WHERE warehouse_id = (
	SELECT Warehouse_ID
	FROM inventory
	WHERE 
		closing_stock = 0
	GROUP BY Warehouse_ID
	ORDER BY COUNT(*) DESC LIMIT 1);

-- IDENTIFY THE DAY OF THE WEEK WITH THE HIGHEST STOCK-OUT FREQUENCY
SELECT 
	DAYNAME(Date) AS Day_of_Week, 
    COUNT(*) AS Stock_out_frequency
FROM inventory
WHERE closing_stock = 0
GROUP BY DAYNAME(Date)
HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM inventory
        WHERE closing_stock = 0
        GROUP BY DAYNAME(date)
    ) T
);

-- LIST ALL PRODUCTS WITH STOCK-OUTS IN MORE THAN 3 WAREHOUSES SIMULTANEOUSLY.
SELECT 
	p.Product_ID, 
    p.Product_Name, 
    Date, 
    COUNT(DISTINCT i.warehouse_id) AS Warehouse_ID
FROM inventory i
INNER JOIN products p
	ON p.product_id = i.product_id
WHERE i.closing_stock = 0
GROUP BY 
	p.product_id, 
    i.date
HAVING 
	count(i.warehouse_id) > 3;

-- VERIFY WHERE CLOSING_STOCK NOT EQUAL TO OPENING_STOCK + QUANTITY_RECEIVED - QUANTITY_SOLD.
SELECT 
	Inventory_ID, 
    Product_ID, 
    Warehouse_ID, 
    Date, 
    Opening_Stock, 
    Quantity_Received, 
    Quantity_Sold, 
    Closing_Stock
FROM inventory
WHERE 
	closing_stock <> opening_stock + quantity_received - quantity_sold;

-- COMPUTE AVERAGE ORDER QUANTITY PER SUPPLIER
SELECT 
	s.Supplier_ID, 
    s.Supplier_Name, 
    AVG(order_quantity) AS Average_order_quantity
FROM suppliers s
INNER JOIN purchase_orders o
	ON s.supplier_id = o.supplier_id
GROUP BY 
	s.supplier_id, 
    s.supplier_name;

-- COMPUTE THE AVERAGE DAILY CLOSING_STOCK FOR EACH PRODUCT.
SELECT 
	Product_ID, 
    AVG(closing_stock) AS Average_closing_stock
FROM inventory
GROUP BY product_id;

-- IDENTIFY TOP 10 BEST SELLING PRODUCTS
SELECT 
	p.product_id, 
    p.product_name, 
    SUM(o.quantity_sold) AS Sales
FROM products p
INNER JOIN inventory o
	ON p.product_id = o.product_id
GROUP BY 
	o.product_id, 
    p.product_name
ORDER BY Sales DESC LIMIT 10;


-- FIND LEAST SELLING PRODUCTS
SELECT 
	p.product_id, 
    p.product_name, 
    SUM(o.quantity_sold) AS Sales
FROM products p 
INNER JOIN inventory o
ON p.product_id = o.product_id
GROUP BY product_id, p.product_name
ORDER BY SUM(o.quantity_sold) ASC LIMIT 10;

-- RANK WAREHOUSES BASED ON TOTAL QUANTITY SOLD.
SELECT 
    Warehouse_ID,
    SUM(quantity_sold) AS Total_quantity_sold,
    RANK() OVER (
        ORDER BY SUM(quantity_sold) DESC
    ) AS Warehouse_rank
FROM inventory
GROUP BY warehouse_id;


-- COMPUTE THE MIN AND MAX DAILY STOCK LEVEL PER PRODUCT.
SELECT 
    Product_ID,
    MIN(closing_stock) AS Min_daily_stock,
    MAX(closing_stock) AS Max_daily_stock
FROM inventory
GROUP BY product_id;

-- Find days where closing_stock was higher than opening_stock.
SELECT 
	Inventory_ID, 
    Product_ID,
    Warehouse_ID, 
    Date, 
    Opening_Stock, 
    Quantity_Received, 
    Quantity_Sold, 
    Closing_Stock
FROM inventory
WHERE 
	closing_stock > opening_stock;

-- IDENTIFY DEMAND–SUPPLY IMBALANCE DAYS WHERE SALES > AVAILABLE STOCK
SELECT 
	Inventory_ID, 
    Product_ID, 
    Warehouse_ID, 
    Date, 
    Opening_Stock, 
    Quantity_Received, 
    Quantity_Sold, 
    Closing_Stock
FROM inventory
WHERE 
	quantity_sold > (opening_stock + quantity_received);

-- COMPUTE AVERAGE DAILY STOCK AVAILABILITY PER WAREHOUSE
SELECT 
	Warehouse_id, 
    AVG(opening_stock + quantity_received) AS Stock_availability 
FROM inventory
GROUP BY warehouse_id;

-- IDENTIFY WAREHOUSES HANDLING THE WIDEST PRODUCT VARIETY.
SELECT 
	Warehouse_ID, 
	COUNT(DISTINCT product_id) AS No_of_unique_products
FROM inventory
GROUP BY warehouse_id
HAVING (No_of_unique_products) >  1;

-- FIND WAREHOUSES WITH THE HIGHEST AVERAGE CLOSING_STOCK.
SELECT 
	Warehouse_ID, 
    AVG(closing_stock) AS Average_closing_stock
FROM inventory
GROUP BY warehouse_id
HAVING AVG(closing_stock) = (
    SELECT MAX(avg_stock)
    FROM (
        SELECT AVG(closing_stock) AS avg_stock
        FROM inventory
        GROUP BY warehouse_id
    ) t
);

-- IDENTIFY WAREHOUSES DEPENDENT ON A SINGLE SUPPLIER.
SELECT 
	Warehouse_ID, 
    COUNT(DISTINCT supplier_id) AS Count_of_suppliers
FROM inventory i
INNER JOIN purchase_orders o
	ON i.product_id = o.product_id
GROUP BY warehouse_id
HAVING  Count_of_suppliers = 1;

-- IDENTIFY PRODUCTS SERVED BY ONLY ONE SUPPLIER.
SELECT 
    Product_ID,
    COUNT(DISTINCT supplier_id) AS Supplier_Count
FROM purchase_orders
GROUP BY product_id
HAVING  supplier_count = 1;

-- DETERMINE HOW MANY TIMES CLOSING_STOCK WENT NEGATIVE (DATA QUALITY CHECK).
SELECT COUNT(*) AS Count_of_stocks
FROM inventory
WHERE closing_stock < 0;

-- IDENTIFY WAREHOUSES THAT EXPERIENCED SIMULTANEOUS STOCK-OUTS OF 3+ PRODUCTS ON THE SAME DAY
SELECT 
    Warehouse_ID,
    Date,
    COUNT(DISTINCT product_id) AS Stockout_products
FROM inventory
WHERE closing_stock = 0
GROUP BY 
	warehouse_id, 
    date
HAVING Stockout_products > 3;


-- COMPUTE THE AVERAGE DAILY OPENING_STOCK FOR EACH PRODUCT.
SELECT 
	Product_ID,
    AVG(opening_stock) AS Average_opening_stock
FROM inventory
GROUP BY product_id;

-- Compute the variance between opening and closing stock per product per month.
SELECT 
	Product_ID, 
    MONTH(Date), 
    YEAR(Date), 
    ROUND(VARIANCE(opening_stock - closing_stock), 3) AS Stock_variance
FROM inventory
GROUP BY 
	product_id, 
    MONTH(Date),
    YEAR(Date);

-- COMPUTE TOTAL QUANTITY SOLD PER PRODUCT PER WAREHOUSE
SELECT 
	Product_ID, 
    Warehouse_ID, 
    SUM(quantity_sold) AS Total_quantity_sold
FROM inventory
GROUP BY 
	product_id, 
    warehouse_id;

-- COMPUTE TOTAL INVENTORY RECEIVED PER PRODUCT PER WAREHOUSE.
SELECT 
	Product_ID, 
    Warehouse_ID, 
    SUM(quantity_received) AS Total_inventory_received
FROM inventory
GROUP BY 
	product_id, 
    warehouse_id;

--  FIND DAYS WHERE BOTH QUANTITY_RECEIVED AND QUANTITY_SOLD WERE ZERO.
SELECT Inventory_ID, Product_ID, Warehouse_ID, Date, Opening_Stock, Quantity_Received, Quantity_Sold, Closing_Stock
FROM inventory
WHERE 
	quantity_received = 0 AND quantity_sold = 0;

-- IDENTIFY SUPPLIERS WITH LOW ON_TIME_DELIVERY_RATE
SELECT 
	Supplier_ID, 
    Supplier_Name, 
    On_time_delivery_rate
FROM suppliers
WHERE on_time_delivery_rate = (SELECT MIN(on_time_delivery_rate) FROM suppliers);

-- FIND PRODUCTS SOLD IN ONLY ONE WAREHOUSE
SELECT 
    Product_ID,
    COUNT(DISTINCT warehouse_id) AS Warehouse_count
FROM inventory
WHERE quantity_sold > 0
GROUP BY product_id
HAVING Warehouse_count = 1;

-- CALCULATE TOTAL SALES PER CATEGORY PER MONTH.
SELECT 
	Category, 
    MONTH(i.Date) AS Month, 
    YEAR(i.Date) AS Year, 
    SUM(i.quantity_sold) AS Total_sales
FROM products p
INNER JOIN inventory i
	ON p.product_id = i.product_id
GROUP BY category, MONTH(i.Date), YEAR(i.Date);

-- FIND THE HIGHEST DEMAND MONTH
SELECT 
	MONTHNAME(Date) AS Month,
    YEAR(Date) AS Year, 
    SUM(quantity_sold) AS Total_sales
FROM inventory
WHERE quantity_sold > 0
GROUP BY 
	MONTHNAME(Date), 
	YEAR(Date)
ORDER BY Total_sales DESC LIMIT 1;

-- COMPUTE ROLLING 30-DAY DEMAND USING WINDOW FRAMES.
SELECT 
	Inventory_ID, 
	Product_ID,
	Warehouse_ID, 
	Date, 
	Opening_Stock, 
	Quantity_Received, 
	Quantity_Sold,
	Closing_Stock,
    SUM(quantity_sold) OVER(PARTITION BY product_id ORDER BY date ROWS BETWEEN 29 PRECEDING AND CURRENT ROW) AS 30_day_rolling_Demand
FROM inventory ;

-- COMPUTE CUMULATIVE DAILY SALES USING WINDOW FUNCTIONS.
SELECT 
	Inventory_ID, 
    Product_ID, 
    Warehouse_ID, 
    Date, 
    Opening_Stock, 
    Quantity_Received, 
    Quantity_Sold, 
    Closing_Stock,
    SUM(quantity_sold) OVER(ORDER BY date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS Cumulative_daily_sales
FROM inventory;

-- COMPUTE AVERAGE UNIT_COST VARIATION PER SUPPLIER.
SELECT 
	Supplier_ID, 
    VARIANCE(UNIT_COST) AS Unit_cost_variation
FROM purchase_orders
GROUP BY supplier_id;

-- ANALYZE CATEGORY-WISE REVENUE CONTRIBUTION.
SELECT p.Category, SUM(i.quantity_sold * p.unit_price) AS Revenue
FROM products p
INNER JOIN INVENTORY i
	ON p.product_id = i.product_id
GROUP BY p.category;

-- CALCULATE INVENTORY TURNOVER FOR EACH PRODUCT.
SELECT 
	p.Product_ID, 
    p.Product_Name, 
    (SUM(quantity_sold)/(AVG((opening_stock + closing_stock))/2)) AS Inventory_turnover
FROM products p
INNER JOIN inventory i
	ON p.product_id = i.product_id
GROUP BY p.product_id, p.product_name;

-- CALCULATE MOVING 7-DAY AVERAGE SALES PER PRODUCT
SELECT 
	Inventory_ID, 
	Product_ID, 
    Warehouse_id, 
    date, 
    opening_stock, 
    quantity_received, 
    quantity_sold, 
    closing_stock, 
    AVG(quantity_sold) OVER(partition by product_id ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS Average_sales
FROM inventory;

-- Calculate average delivery delay for each supplier.
SELECT supplier_id,
AVG(DATEDIFF(actual_delivery_date, expected_delivery_date)) AS avg_delivery_delay
FROM purchase_orders
GROUP BY supplier_id;

-- Compare expected vs actual delivery accuracy per supplier.
SELECT 
    supplier_id,
    AVG(DATEDIFF(actual_delivery_date, expected_delivery_date)) AS avg_delivery_accuracy
FROM purchase_orders
GROUP BY supplier_id;

-- Find products whose stock-out frequency increased month-over-month.
WITH monthly_stockout AS (
    SELECT 
        product_id,
        YEAR(date) AS yr,
        MONTH(date) AS mn,
        COUNT(*) AS stockout_count
    FROM inventory
    WHERE closing_stock = 0
    GROUP BY product_id, YEAR(date), MONTH(date)
)
SELECT *
FROM (
    SELECT 
        product_id,
        yr,
        mn,
        stockout_count,
        LAG(stockout_count) OVER (
            PARTITION BY product_id
            ORDER BY yr, mn
        ) AS prev_month_stockout
    FROM monthly_stockout
) t
WHERE stockout_count > prev_month_stockout;


-- Segment products into 4 demand tiers using NTILE().
SELECT 
    product_id,
    total_demand,
    NTILE(4) OVER (ORDER BY total_demand DESC) AS demand_tier
FROM (
    SELECT 
        product_id,
        SUM(quantity_sold) AS total_demand
    FROM inventory
    GROUP BY product_id
) t;

-- Calculate supplier lead time variability.
-- Actual delivery date − Order date
SELECT s.supplier_id, s.supplier_name, variance(DATEDIFF(o.actual_delivery_date, o.order_date))
FROM suppliers s
INNER JOIN purchase_orders o
ON s.supplier_id = o.supplier_id
GROUP BY s.supplier_id, s.supplier_name;

-- Identify suppliers with highest delivery date deviation.
-- Delivery Date Deviation = Actual delivery date − Expected delivery date
SELECT s.supplier_id, s.supplier_name, DATEDIFF(o.actual_delivery_date, o.expected_delivery_date)
FROM suppliers s
INNER JOIN purchase_orders o
ON s.supplier_id = o.supplier_id
WHERE DATEDIFF(o.actual_delivery_date, o.expected_delivery_date) = (SELECT MAX(DATEDIFF(o.actual_delivery_date, o.expected_delivery_date))
FROM purchase_orders)
;


-- Identify supplier–product pairs with maximum demand.
SELECT o.supplier_id, i.product_id, sum(i.quantity_sold)
FROM purchase_orders o
INNER JOIN inventory i 
ON o.product_id = i.product_id
GROUP BY o.supplier_id, i.product_id
HAVING sum(i.quantity_sold) = (SELECT MAX(ABC) FROM (SELECT sum(i1.quantity_sold) AS ABC
FROM purchase_orders o1
INNER JOIN inventory i1 
ON o1.product_id = i1.product_id
GROUP BY o1.supplier_id, i1.product_id) A);


-- Determine most stable category
-- stable = sales do not change much
SELECT category, VARIANCE(monthly_sales) FROM (
SELECT YEAR(i.date), MONTH(i.date), p.category, SUM(i.quantity_sold) AS monthly_sales
FROM inventory i
INNER JOIN products p
ON i.product_id = p.product_id
GROUP BY p.Category, MONTH(i.date), YEAR(i.date)) a
GROUP BY category
ORDER BY VARIANCE(monthly_sales) ASC 
LIMIT 1;

-- Determine weekly demand averages
SELECT dayname(date), AVG(quantity_sold)
FROM inventory
GROUP BY dayname(date);

-- Identify products with constant demand
SELECT product_id,  VARIANCE(monthly_sales) FROM (
SELECT product_id, YEAR(Date), MONTH(Date), SUM(quantity_sold) AS monthly_sales
FROM inventory
GROUP BY product_id, MONTH(date), YEAR(Date)) A
GROUP BY product_id 
ORDER BY VARIANCE(monthly_sales) ASC LIMIT 1;

-- Identify demand volatility per category
SELECT category, VARIANCE(sales) FROM (SELECT p.category, MONTH(i.date), SUM(quantity_sold) AS sales
FROM inventory i
INNER JOIN products p
ON i.product_id = p.product_id
GROUP BY p.category, MONTH(i.date)) A
GROUP BY category;

-- Identify stock-outs occuring during festival or seasonal peaks
SELECT *
FROM inventory
WHERE closing_stock = 0 AND MONTH(date) IN (10, 11, 12);

-- Identify products with highest inconsistent sales
SELECT product_id, variance(monthly_sales) AS V FROM (
SELECT product_id, YEAR(date), MONTH(date), SUM(quantity_sold) AS monthly_sales
FROM inventory
GROUP BY product_id, YEAR(date), MONTH(date))A
GROUP BY product_id
ORDER by variance(monthly_sales) DESC LIMIT 5;

-- Calculate warehouse efficiency score
-- A single measure that shows how well a warehouse is working
SELECT warehouse_id, (SUM(quantity_sold)/ SUM(opening_stock + quantity_received))
FROM inventory
GROUP BY warehouse_id;


-- Calculate demand peaks per month
SELECT YEAR(date), MONTH(date), SUM(quantity_sold)
FROM inventory
GROUP BY YEAR(date), MONTH(date)
ORDER BY SUM(quantity_sold) DESC;

-- Identify top revenue product-warehouse pairs
SELECT o.product_id, i.warehouse_id, SUM(i.quantity_sold * o.unit_cost)
FROM purchase_orders o
INNER JOIN inventory i
ON o.product_id = i.product_id
GROUP BY o.product_id, i.warehouse_id
ORDER BY SUM(i.quantity_sold * o.unit_cost) DESC;

-- Determine products with the highest month-wise inventory turnover
SELECT product_id, YEAR(Date), MONTH(Date), SUM(quantity_sold) /AVG((opening_stock + closing_stock) / 2)
FROM inventory
GROUP BY YEAR(Date), MONTH(Date), product_id
ORDER BY SUM(quantity_sold) /AVG((opening_stock + closing_stock) / 2) DESC
LIMIT 6;


-- Identify warehouses with highest seasonal sales variation
SELECT warehouse_id, VARIANCE(total_sales) FROM (
SELECT warehouse_id, YEAR(date), MONTH(date), SUM(quantity_sold) as total_sales
FROM inventory
GROUP BY warehouse_id, YEAR(date), MONTH(date))a
GROUP BY warehouse_id
ORDER BY VARIANCE(total_sales) DESC LIMIT 3;

-- Find total orders each supplier fulfilled per product
SELECT supplier_id, product_id,
COUNT(order_id)
FROM purchase_orders
GROUP BY supplier_id, product_id;

-- Rank suppliers based on fullfillment accuracy
SELECT supplier_id, supplier_name, on_time_delivery_rate,
RANK() OVER(ORDER BY on_time_delivery_rate DESC)
FROM suppliers
ORDER BY RANK() OVER(ORDER BY on_time_delivery_rate DESC) DESC;

-- Find total procurement cost per supplier
-- procurement_cost = order_quantity * unit_price
SELECT supplier_id, SUM(order_quantity * unit_cost)
FROM purchase_orders
GROUP BY supplier_id
ORDER BY SUM(order_quantity * unit_cost) DESC; 

-- Identify suppliers delivering only specific warehouses
SELECT supplier_id, count(distinct warehouse_id)
FROM PURCHASE_ORDERS O
inner join INVENTORY i
on i.product_id = o.product_id
GROUP BY supplier_id
HAVING count(warehouse_id) = 1;

-- Identity products with inconsistent sales patterns
SELECT product_id, VARIANCE(sales) FROM (
SELECT product_id, MONTH(DATE),year(date), SUM(quantity_sold) AS sales
FROM inventory
GROUP BY product_id, MONTH(date), year(date))A
GROUP BY product_id;

-- Determine products generating highest profit margin
-- profit margin = (profit / revenue) * 100
-- revenue = quantity sold * selling price
-- profit = revenue - cost
-- cost = order_quantity * unit_cost
SELECT i.product_id, p.product_name, ((SUM(i.quantity_sold * p.unit_price) - SUM(o.order_quantity - o.unit_cost)) / SUM(i.quantity_sold * p.unit_price) ) * 100 
FROM purchase_orders o
INNER JOIN inventory i
ON o.product_id = i.product_id
INNER JOIN PRODUCTS P 
ON P.product_id = i.product_id
GROUP BY i.product_id, p.product_name
ORDER BY ((SUM(i.quantity_sold * p.unit_price) - SUM(o.order_quantity - o.unit_cost)) / SUM(i.quantity_sold * p.unit_price) ) * 100 DESC;

-- identify categories frequently going into stock outs
SELECT category, COUNT(*)
FROM products p
INNER JOIN inventory i
ON i.product_id = p.product_id
WHERE closing_stock = 0
GROUP BY category
ORDER BY count(*) DESC;

-- Rank warehouses based on total replenishment received
SELECT w.warehouse_id, w.warehouse_location, SUM(quantity_received),
RANK() OVER(ORDER BY SUM(quantity_received) DESC)
FROM warehouses w
INNER JOIN inventory i
ON w.warehouse_id = i.warehouse_id
GROUP by w.warehouse_id;

-- IDENTIFY underperformaing warehouses based on low sales but high stocks
SELECT w.warehouse_id, w.warehouse_location, SUM(quantity_sold), SUM(closing_stock)
FROM warehouses w
INNER JOIN inventory i
ON w.warehouse_id = i.warehouse_id
GROUP by w.warehouse_id
HAVING SUM(quantity_sold) < (SELECT AVG(quantity_sold) FROM inventory) AND SUM(closing_stock) > (SELECT AVG(CLOSING_STOCK) FROM inventory);

-- fIND WAREHOUSES with the highest backlog
SELECT w.warehouse_id, w.warehouse_location, SUM(quantity_sold - closing_stock)
FROM warehouses w
INNER JOIN inventory i
ON w.warehouse_id = i.warehouse_id
WHERE i.quantity_sold > i.closing_stock
GROUP by w.warehouse_id,  w.warehouse_location
ORDER BY  SUM(quantity_sold - closing_stock) DESC
LIMIT 1;

-- Predict next day stock using LEAD()
SELECT date, closing_stock,
LEAD(closing_stock) OVER(ORDER BY date)
FROM inventory;

-- Identify products that had stock outs during promotional periods
SELECT p.product_id, p.product_name
FROM inventory i 
INNER JOIN products p
ON p.product_id = i.product_id
WHERE closing_stock = 0 AND month(date) IN (11, 12);

-- Find first and last stock out event using row_number()
SELECT * FROM (
SELECT *,
ROW_NUMBER() OVER(ORDER BY DATE) AS rn
FROM inventory
WHERE closing_stock = 0)A
WHERE rn = 1 or rn = (SELECT MAX(rn) FROM (
SELECT *,
ROW_NUMBER() OVER(ORDER BY DATE) AS rn
FROM inventory
WHERE closing_stock = 0)b);


-- Rank categories by monthly demand using DENSE_RANK()
SELECT p.category, MONTH(i.Date), SUM(quantity_sold), DENSE_RANK() OVER(PARTITION BY MONTH(i.Date) ORDER BY SUM(quantity_sold) DESC)
FROM inventory i
INNER JOIN products p
ON i.product_id = p.product_id
GROUP BY MONTH(i.Date), p.category;


-- Find top selling warehouses using QUALIFY()
SELECT  warehouse_id, ABC FROM (
SELECT warehouse_id, SUM(quantity_sold) ABC, RANK() OVER(ORDER BY SUM(quantity_sold) DESC) AS rnk
FROM inventory
GROUP BY warehouse_id) A
WHERE rnk <= 5;
;

-- Identify product impacted by holidays
SELECT DISTINCT
    product_id
FROM inventory
WHERE date IN ('2025-01-26', '2025-08-15', '2025-10-02')
  AND closing_stock = 0;
  
-- Determine warehouse throughput time
SELECT
    warehouse_id,
    YEAR(date) AS year,
    MONTH(date) AS month,
    SUM(quantity_sold) AS warehouse_throughput
FROM inventory
GROUP BY
    warehouse_id,
    YEAR(date),
    MONTH(date)
ORDER BY
    warehouse_id,
    year,
    month;
    
    
-- 
