select
    cast(DATE_DAY as date) as date_day,
    FIRST_PURCHASES as first_purchases,
    ALL_PURCHASES as all_purchases,
    coalesce(GOOGLE_PAID_SEARCH_SPEND, 0) as google_paid_search,
    coalesce(GOOGLE_SHOPPING_SPEND, 0) as google_shopping,
    coalesce(GOOGLE_PMAX_SPEND, 0) as google_pmax,
    coalesce(GOOGLE_DISPLAY_SPEND, 0) as google_display,
    coalesce(GOOGLE_VIDEO_SPEND, 0) as google_video,
    coalesce(META_FACEBOOK_SPEND, 0) as meta_facebook,
    coalesce(META_INSTAGRAM_SPEND, 0) as meta_instagram,
    coalesce(META_OTHER_SPEND, 0) as meta_other,
    coalesce(TIKTOK_SPEND, 0) as tiktok
from {{ source('conjura', 'raw_conjura') }}
where ORGANISATION_ID = '7569a6a9c156a0f9398fa6cfd51df5bb'
  and TERRITORY_NAME = 'US'