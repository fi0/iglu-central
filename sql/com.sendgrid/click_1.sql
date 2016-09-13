-- AUTO-GENERATED BY schema-ddl DO NOT EDIT
-- Generator: schema-ddl 0.2.0
-- Generated: 2015-11-12 13:26

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_sendgrid_click_1 (
    "schema_vendor"                      VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_name"                        VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_format"                      VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_version"                     VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "root_id"                            CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"                        TIMESTAMP     ENCODE LZO       NOT NULL,
    "ref_root"                           VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "ref_tree"                           VARCHAR(1500) ENCODE RUNLENGTH NOT NULL,
    "ref_parent"                         VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "asm_group_id"                       SMALLINT      ENCODE LZO,
    "category"                           VARCHAR(5000) ENCODE LZO,
    "email"                              VARCHAR(4096) ENCODE LZO,
    "ip"                                 VARCHAR(15)   ENCODE LZO,
    "newsletter.newsletter_id"           VARCHAR(4096) ENCODE LZO,
    "newsletter.newsletter_send_id"      VARCHAR(4096) ENCODE LZO,
    "newsletter.newsletter_user_list_id" VARCHAR(4096) ENCODE LZO,
    "sg_event_id"                        VARCHAR(4096) ENCODE LZO,
    "sg_message_id"                      VARCHAR(4096) ENCODE LZO,
    "smtp_id"                            VARCHAR(4096) ENCODE LZO,
    "timestamp"                          TIMESTAMP     ENCODE LZO,
    "url"                                VARCHAR(4096) ENCODE LZO,
    "useragent"                          VARCHAR(4096) ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_sendgrid_click_1 IS 'iglu:com.sendgrid/click/jsonschema/1-0-0';
