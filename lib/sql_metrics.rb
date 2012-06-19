require "sql_metrics/engine"
require "mongo_mapper"
require "sql_metrics/metric"
  MongoMapper.database = "sql_metrics-#{Rails.env}"
  ActiveSupport::Notifications.subscribe /^sql\./ do |*args|
   SqlMetrics::Metric.store!(args)
  end
  
