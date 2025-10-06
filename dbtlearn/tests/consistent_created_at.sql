SELECT l.created_at, r.review_date
FROM {{ ref('fct_reviews') }} r
JOIN {{ ref('dim_listings_cleansed') }} l ON l.listing_id = r.listing_id
WHERE l.created_at >= r.review_date
LIMIT 10