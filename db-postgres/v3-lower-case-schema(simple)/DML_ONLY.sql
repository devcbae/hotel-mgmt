INSERT INTO "mgmt_item_category" ("item_cate_id", "item_cate_name", "item_cate_order") VALUES (1, 'PERSONAL & BASIC', 1);
INSERT INTO "mgmt_item_category" ("item_cate_id", "item_cate_name", "item_cate_order") VALUES (2, 'PAY & BANK', 2);
INSERT INTO "mgmt_item_category" ("item_cate_id", "item_cate_name", "item_cate_order") VALUES (3, 'CAREER & PERFORMANCE', 3);


INSERT INTO "mgmt_item_trait" ("item_trait_id", "item_trait_name") VALUES (1, 'DESC');
INSERT INTO "mgmt_item_trait" ("item_trait_id", "item_trait_name") VALUES (2, 'SELECTABLE');
INSERT INTO "mgmt_item_trait" ("item_trait_id", "item_trait_name") VALUES (3, 'PICTURE');
INSERT INTO "mgmt_item_trait" ("item_trait_id", "item_trait_name") VALUES (4, 'MEDIA');
INSERT INTO "mgmt_item_trait" ("item_trait_id", "item_trait_name") VALUES (5, 'DATE');
INSERT INTO "mgmt_item_trait" ("item_trait_id", "item_trait_name") VALUES (6, 'DATETIME');

INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (1, 'FIRST NAME', 1, 1, 1);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (2, 'LAST NAME', 1, 1, 2);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (3, 'ADDRESS LINE 1', 1, 1, 3);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (4, 'ADDRESS LINE 2', 1, 1, 4);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (5, 'POSTAL CODE', 1, 1, 5);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (6, 'CELL NUMBER', 1, 1, 6);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (7, 'BANK NAME', 2, 2, 1);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (8, 'TRANSIT', 2, 1, 2);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (9, 'ROUTING', 2, 1, 3);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (10, 'ACCOUNT', 2, 1, 4);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (11, 'PAY GRADE', 2, 2, 5);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (13, 'POSITION NAME', 3, 1, 1);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (16, 'PERFORMANCE COMMENT', 3, 1, 4);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (17, 'PROFILE PHOTO', 1, 3, 7);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (12, 'ANNUAL PAY', 2, 1, 6);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (14, 'POSITION BEGIN DATE', 3, 5, 2);
INSERT INTO "mgmt_item" ("item_id", "item_name", "item_cate_id", "item_trait_id", "item_order") VALUES (15, 'POSITION END DATE', 3, 5, 3);

INSERT INTO "mgmt_item_trait_dtl" ("item_trait_dtl_id", "item_trait_dtl_name", "item_trait_id", "item_trait_dtl_order") VALUES (1, 'LENGTH', 1, 1);
INSERT INTO "mgmt_item_trait_dtl" ("item_trait_dtl_id", "item_trait_dtl_name", "item_trait_id", "item_trait_dtl_order") VALUES (2, 'IMAGE TYPE', 3, 1);
INSERT INTO "mgmt_item_trait_dtl" ("item_trait_dtl_id", "item_trait_dtl_name", "item_trait_id", "item_trait_dtl_order") VALUES (3, 'SELECTION TYPE', 2, 1);
INSERT INTO "mgmt_item_trait_dtl" ("item_trait_dtl_id", "item_trait_dtl_name", "item_trait_id", "item_trait_dtl_order") VALUES (4, 'MEDIA TYPE', 4, 1);

INSERT INTO "mgmt_item_trait_setting" ("item_trait_setting_id", "item_id", "item_trait_dtl_id", "item_trait_setting_value", "item_trait_setting_order") VALUES (4, 11, 3, '10000 ~ 20000', 1);
INSERT INTO "mgmt_item_trait_setting" ("item_trait_setting_id", "item_id", "item_trait_dtl_id", "item_trait_setting_value", "item_trait_setting_order") VALUES (5, 11, 3, '20000 ~ 30000', 2);
INSERT INTO "mgmt_item_trait_setting" ("item_trait_setting_id", "item_id", "item_trait_dtl_id", "item_trait_setting_value", "item_trait_setting_order") VALUES (1, 7, 3, 'AMERICAN BANK', 1);
INSERT INTO "mgmt_item_trait_setting" ("item_trait_setting_id", "item_id", "item_trait_dtl_id", "item_trait_setting_value", "item_trait_setting_order") VALUES (2, 7, 3, 'CANADIAN BANK', 2);
INSERT INTO "mgmt_item_trait_setting" ("item_trait_setting_id", "item_id", "item_trait_dtl_id", "item_trait_setting_value", "item_trait_setting_order") VALUES (3, 7, 3, 'EUROPEAN BANK', 3);
INSERT INTO "mgmt_item_trait_setting" ("item_trait_setting_id", "item_id", "item_trait_dtl_id", "item_trait_setting_value", "item_trait_setting_order") VALUES (6, 17, 2, 'JPG', 1);
INSERT INTO "mgmt_item_trait_setting" ("item_trait_setting_id", "item_id", "item_trait_dtl_id", "item_trait_setting_value", "item_trait_setting_order") VALUES (7, 17, 2, 'PNG', 2);

INSERT INTO "mgmt_org_hichy" ("dept_hichy_id", "dept_hichy_name") VALUES (1, 'CEO');
INSERT INTO "mgmt_org_hichy" ("dept_hichy_id", "dept_hichy_name") VALUES (2, 'MANAGEMENT');
INSERT INTO "mgmt_org_hichy" ("dept_hichy_id", "dept_hichy_name") VALUES (3, 'EMPLOYEE');
INSERT INTO "mgmt_org_hichy" ("dept_hichy_id", "dept_hichy_name") VALUES (4, 'SUITE');

INSERT INTO "mgmt_org_entity" ("entity_id", "entity_hichy_id", "entity_desc", "upper_entity_id") VALUES (1, 1, 'CEO JAMES', NULL);
INSERT INTO "mgmt_org_entity" ("entity_id", "entity_hichy_id", "entity_desc", "upper_entity_id") VALUES (3, 2, 'KITCHEN MANAGER HALEY', 1);
INSERT INTO "mgmt_org_entity" ("entity_id", "entity_hichy_id", "entity_desc", "upper_entity_id") VALUES (2, 2, 'SUITE MANAGER KIM', 1);
INSERT INTO "mgmt_org_entity" ("entity_id", "entity_hichy_id", "entity_desc", "upper_entity_id") VALUES (4, 3, 'SUITE EE HEATHER', 2);
INSERT INTO "mgmt_org_entity" ("entity_id", "entity_hichy_id", "entity_desc", "upper_entity_id") VALUES (5, 3, 'KITCHEN EE ADAM', 3);
INSERT INTO "mgmt_org_entity" ("entity_id", "entity_hichy_id", "entity_desc", "upper_entity_id") VALUES (7, 4, 'SUITE MARS', 4);
INSERT INTO "mgmt_org_entity" ("entity_id", "entity_hichy_id", "entity_desc", "upper_entity_id") VALUES (8, 4, 'SUITE SATURN', 4);
INSERT INTO "mgmt_org_entity" ("entity_id", "entity_hichy_id", "entity_desc", "upper_entity_id") VALUES (6, 4, 'SUITE SUPREME', 4);
INSERT INTO "mgmt_org_entity" ("entity_id", "entity_hichy_id", "entity_desc", "upper_entity_id") VALUES (9, 4, 'WEDDING HALL', 4);
INSERT INTO "mgmt_org_entity" ("entity_id", "entity_hichy_id", "entity_desc", "upper_entity_id") VALUES (10, 4, 'GRAND DINING HAL', 5);
INSERT INTO "mgmt_org_entity" ("entity_id", "entity_hichy_id", "entity_desc", "upper_entity_id") VALUES (11, 4, 'KITCHEN', 5);

