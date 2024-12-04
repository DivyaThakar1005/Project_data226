{% snapshot snapshot_realtime %}

{{
    config(
      target_schema='snapshot',
      unique_key='Date',
      strategy='timestamp',
      updated_at='Date',
    )
}}

select * from {{ source('data226', 'stock_price_real_time') }}

{% endsnapshot %}