with weekly as (
    select
        date_trunc(date_day, week(monday)) as week_start,
        count(*) as n_days,
        sum(first_purchases) as first_purchases,
        sum(all_purchases) as all_purchases,
        sum(google_paid_search) as google_paid_search,
        sum(google_shopping) as google_shopping,
        sum(google_pmax) as google_pmax,
        sum(google_display) as google_display,
        sum(google_video) as google_video,
        sum(meta_facebook) as meta_facebook,
        sum(meta_instagram) as meta_instagram,
        sum(meta_other) as meta_other,
        sum(tiktok) as tiktok
    from {{ ref('stg_conjura_us') }}
    group by 1
)
select
    * except (n_days),
    if(extract(month from week_start) = 11 and extract(day from week_start) >= 20, 1, 0) as black_friday,
    if(extract(month from week_start) = 12 and extract(day from week_start) >= 18, 1, 0) as christmas
from weekly
where n_days = 7