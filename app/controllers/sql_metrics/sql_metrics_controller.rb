module SqlMetrics
  class  SqlMetricsController < ApplicationController
    @metics = SqlMetrics::Metric.all
    redirect_to sql_metrics_url
  end
end
