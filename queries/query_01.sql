COPY acp_edw.stg_edw.apptentive_fansignals
(
    recorded_dtm,
    acc_uid
)
FROM '{s3_edw_bucket}/apptentive_fansignals/processed/apptentive_fansignals_{workflow_run_id}_'
IAM_ROLE '{iam_role}'
DELIMITER
IGNOREHEADER AS 1
ESCAPE REMOVEQUOTES
EMPTYASNULL
BLANKSASNULL
IGNOREBLANKLINES;
