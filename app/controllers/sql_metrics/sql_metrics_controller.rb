module SqlMetrics
  class  SqlMetricsController < ApplicationController
    def index
      @metrics = SqlMetrics::Metric.all
    end
  end
end
