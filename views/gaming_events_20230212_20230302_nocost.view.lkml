# The name of this view in Looker is "Gaming Events 20230212 20230302 Nocost"
view: gaming_events_20230212_20230302_nocost {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `bingoblast.gaming_events_20230212_20230302_nocost`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Ad Network" in Explore.

  dimension: ad_network {
    type: string
    sql: ${TABLE}.ad_network ;;
  }

  dimension: ad_revenue {
    type: number
    sql: ${TABLE}.ad_revenue ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ad_revenue {
    type: sum
    sql: ${ad_revenue} ;;
  }

  measure: average_ad_revenue {
    type: average
    sql: ${ad_revenue} ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: continent {
    type: string
    sql: ${TABLE}.continent ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: device_brand {
    type: string
    sql: ${TABLE}.device_brand ;;
  }

  dimension: device_language {
    type: string
    sql: ${TABLE}.device_language ;;
  }

  dimension: device_model {
    type: string
    sql: ${TABLE}.device_model ;;
  }

  dimension: device_os_version {
    type: string
    sql: ${TABLE}.device_os_version ;;
  }

  dimension: device_platform {
    type: string
    sql: ${TABLE}.device_platform ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: event_sequence_within_session {
    type: number
    sql: ${TABLE}.event_sequence_within_session ;;
  }

  dimension: game_name {
    type: string
    sql: ${TABLE}.game_name ;;
  }

  dimension: game_version {
    type: string
    sql: ${TABLE}.game_version ;;
  }

  dimension: gems_earned {
    type: number
    sql: ${TABLE}.gems_earned ;;
  }

  dimension: iap_revenue {
    type: number
    sql: ${TABLE}.iap_revenue ;;
  }

  dimension: install_cost {
    type: number
    sql: ${TABLE}.install_cost ;;
  }

  dimension: install_source {
    type: string
    sql: ${TABLE}.install_source ;;
  }

  dimension: inverse_event_sequence_within_session {
    type: number
    sql: ${TABLE}.inverse_event_sequence_within_session ;;
  }

  dimension: is_first_seen {
    type: yesno
    sql: ${TABLE}.is_first_seen ;;
  }

  dimension_group: next_session_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.next_session_start ;;
  }

  dimension: player_level {
    type: number
    sql: ${TABLE}.player_level ;;
  }

  dimension: player_session_sequence {
    type: number
    sql: ${TABLE}.player_session_sequence ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: unique_event_id {
    type: string
    sql: ${TABLE}.unique_event_id ;;
  }

  dimension: unique_session_id {
    type: string
    sql: ${TABLE}.unique_session_id ;;
  }

  dimension_group: user_first_seen {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.user_first_seen ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [game_name, campaign_name, event_name]
  }
}