require 'test_helper'
require 'sql_metrics/metric'

class SqlMetricsTest < ActiveSupport::TestCase
  test "any sql. notification is saved in the mongo database" do
    payload = { "sql" => "SELECT * FROM foo" }
    ActiveSupport::Notifications.instrument "sql.any_orm", payload do
      sleep( 0.001)
    end
    metric = SqlMetrics::Metric.first
    assert_equal 1, SqlMetrics::Metric.count
    assert_equal "sql.any_orm", metric.name
    assert_equal payload, metric.payload
    assert metric.duration
    assert metric.instrumenter_id
    assert metric.started_at
    assert metric.created_at
  end
end
