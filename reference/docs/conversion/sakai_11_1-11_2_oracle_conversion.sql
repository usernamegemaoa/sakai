--
-- SAK-31766 - Conversion for instances of Sakai that existed prior to 2.4 (all other instances should already be this column length)
--

ALTER TABLE GB_PERMISSION_T MODIFY (FUNCTION_NAME VARCHAR2(255));
ALTER TABLE GB_PERMISSION_T MODIFY (USER_ID VARCHAR2(255));

-- #3258 Drop this unused column
ALTER TABLE gb_grade_record_t DROP COLUMN user_entered_grade; 

-- SAM-3040 slow query observed
ALTER TABLE SAM_ASSESSMETADATA_T MODIFY ( "LABEL" VARCHAR2(99 CHAR) ) ;
CREATE INDEX SAM_METADATA_IDX ON SAM_ASSESSMETADATA_T (LABEL, ENTRY);

ALTER TABLE SAM_PUBLISHEDMETADATA_T MODIFY ( "LABEL" VARCHAR2(99 CHAR) ) ;
CREATE INDEX SAM_PUBMETADATA_IDX ON SAM_PUBLISHEDMETADATA_T (LABEL, ENTRY);
-- END SAM-3040
