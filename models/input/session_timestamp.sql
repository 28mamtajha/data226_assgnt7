WITH session_timestamp_cte AS (
    SELECT
        sessionId,
        ts
    FROM {{ source('raw', 'session_timestamp') }}
)
SELECT
    sessionId,
    ts
FROM session_timestamp_cte
