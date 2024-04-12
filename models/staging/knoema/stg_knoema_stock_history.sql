with source as (
 
    select * from {{source('INTERNATIONAL_CURRENCIES','CDC_TESTING') }}
 
), 
 
renamed as (
 
select 
 
    *
    , positive as positive_renamed
    ,negative as negative_renamed
 
from source 
 
) 
 
select * from renamed