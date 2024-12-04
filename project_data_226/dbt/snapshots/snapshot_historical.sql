{% snapshot snapshot_historical %}

{{
    config(
      target_schema='snapshot',
      unique_key='Date',
      strategy='timestamp',
      updated_at='Date',
    )
}}

select * from {{ source('data226', 'stockprice_historical') }}

{% endsnapshot %}