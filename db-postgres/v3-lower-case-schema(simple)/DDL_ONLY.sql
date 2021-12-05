CREATE TABLE "mgmt_item" (
    "item_id" bigint NOT NULL,
    "item_name" character varying NOT NULL,
    "item_cate_id" integer NOT NULL,
    "item_trait_id" integer NOT NULL,
    "item_order" integer NOT NULL
);

CREATE TABLE "mgmt_item_category" (
    "item_cate_id" integer NOT NULL,
    "item_cate_name" character varying NOT NULL,
    "item_cate_order" smallint NOT NULL
);


CREATE TABLE "mgmt_item_trait" (
    "item_trait_id" integer NOT NULL,
    "item_trait_name" character varying NOT NULL
);

CREATE TABLE "mgmt_item_trait_dtl" (
    "item_trait_dtl_id" integer NOT NULL,
    "item_trait_dtl_name" character varying NOT NULL,
    "item_trait_id" integer NOT NULL,
    "item_trait_dtl_order" smallint NOT NULL
);

CREATE TABLE "mgmt_item_trait_setting" (
    "item_trait_setting_id" bigint NOT NULL,
    "item_id" integer NOT NULL,
    "item_trait_dtl_id" integer NOT NULL,
    "item_trait_setting_value" character varying NOT NULL,
    "item_trait_setting_order" smallint NOT NULL
);

CREATE TABLE "mgmt_org_entity" (
    "entity_id" bigint NOT NULL,
    "entity_hichy_id" integer NOT NULL,
    "entity_desc" character varying NOT NULL,
    "upper_entity_id" bigint
);

CREATE TABLE "mgmt_org_hichy" (
    "dept_hichy_id" integer NOT NULL,
    "dept_hichy_name" character varying NOT NULL
);


ALTER TABLE ONLY "mgmt_item_category"
    ADD CONSTRAINT "mgmt_item_category_pkey" PRIMARY KEY ("item_cate_id");

ALTER TABLE ONLY "mgmt_item_trait_dtl"
    ADD CONSTRAINT "mgmt_item_trait_dtl_pkey" PRIMARY KEY ("item_trait_dtl_id");

ALTER TABLE ONLY "mgmt_item_trait_setting"
    ADD CONSTRAINT "mgmt_item_trait_setting_pkey" PRIMARY KEY ("item_trait_setting_value");

ALTER TABLE ONLY "mgmt_item_trait"
    ADD CONSTRAINT "mgmt_item_trait_pkey" PRIMARY KEY ("item_trait_id");

ALTER TABLE ONLY "mgmt_org_entity"
    ADD CONSTRAINT "mgmt_org_dept_pkey" PRIMARY KEY ("entity_id");

ALTER TABLE ONLY "mgmt_org_hichy"
    ADD CONSTRAINT "mgmt_org_hichy_pkey" PRIMARY KEY ("dept_hichy_id");

ALTER TABLE ONLY "mgmt_item"
    ADD CONSTRAINT "mgmt_org_repo_pkey" PRIMARY KEY ("item_id");

ALTER TABLE ONLY "mgmt_org_entity"
    ADD CONSTRAINT "fk_entity_hichy_id" FOREIGN KEY ("entity_hichy_id") REFERENCES "mgmt_org_hichy"("dept_hichy_id");

ALTER TABLE ONLY "mgmt_item"
    ADD CONSTRAINT "fk_item_cate_id" FOREIGN KEY ("item_cate_id") REFERENCES "mgmt_item_category"("item_cate_id");

ALTER TABLE ONLY "mgmt_item_trait_setting"
    ADD CONSTRAINT "fk_item_id" FOREIGN KEY ("item_id") REFERENCES "mgmt_item"("item_id");

ALTER TABLE ONLY "mgmt_item_trait_setting"
    ADD CONSTRAINT "fk_item_trait_dtl_id" FOREIGN KEY ("item_trait_dtl_id") REFERENCES "mgmt_item_trait_dtl"("item_trait_dtl_id");

ALTER TABLE ONLY "mgmt_item_trait_dtl"
    ADD CONSTRAINT "fk_item_trait_id" FOREIGN KEY ("item_trait_id") REFERENCES "mgmt_item_trait"("item_trait_id");

ALTER TABLE ONLY "mgmt_item"
    ADD CONSTRAINT "fk_item_trait_id" FOREIGN KEY ("item_trait_id") REFERENCES "mgmt_item_trait"("item_trait_id");

ALTER TABLE ONLY "mgmt_org_entity"
    ADD CONSTRAINT "fk_upper_entity_id" FOREIGN KEY ("upper_entity_id") REFERENCES "mgmt_org_entity"("entity_id");

