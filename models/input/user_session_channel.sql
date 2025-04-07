WITH user_session AS (
    SELECT
        userId,
        sessionId,
        channel
    FROM {{ source('raw', 'user_session_channel') }}
)
SELECT
    userId,
    sessionId,
    channel
FROM user_session

