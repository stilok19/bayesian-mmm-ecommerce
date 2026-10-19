select
    week_start,
    row_number() over (order by week_start) - 1 as t,
    first_purchases,
    meta_facebook + meta_instagram + meta_other as meta,
    google_paid_search,
    google_shopping + google_pmax as google_shopping_pmax,
    google_video,
    tiktok,
    black_friday,
    christmas
from {{ ref('mart_weekly_mmm') }}
order by week_start