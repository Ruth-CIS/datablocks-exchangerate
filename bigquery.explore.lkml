include: "bigquery.*.view.lkml"


datagroup: default {
  max_cache_age: "48 hours"
  sql_trigger: select count(*) from `looker-datablocks.exchangerate.forex_real` ;;
}

explore: forex {
  hidden: yes
  from: bq_forex_historical_real {}
#  persist_with: default

}

explore: bq_forex_real {
  hidden: yes
  label: "Exchange Rates"
}
