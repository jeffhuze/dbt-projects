with source as (
 
    select * from {{source('INTERNATIONAL_CURRENCIES','DEMOGRAPHICS') }}
 
), 
 
renamed as (
 
select 
 
    *
    , fips as fips_renamed
    ,state as state_renamed
 
from source 
 
) 
 
select * from renamed