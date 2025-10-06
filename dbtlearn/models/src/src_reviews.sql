select
    listing_id,
    "DATE" as review_date,
    reviewer_name,
    comments as review_text,
    sentiment as review_sentiment
from {{ source('demo_dbt', 'reviews') }}