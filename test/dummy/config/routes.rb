Rails.application.routes.draw do

  resources :users

  mount SqlMetrics::Engine => "/sql_metrics"
end
