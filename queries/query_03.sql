INSERT INTO acp_edw.edw.apptentive_fansignals (
    recorded_dtm,
    acc_uid
)
SELECT
    TO_TIMESTAMP(recorded_dtm, 'YYYY-MM-DD HH24:MI:SS:US') AS recorded_dtm,
    acc_uid
FROM
    acp_edw.stg_edw.apptentive_fansignals;
