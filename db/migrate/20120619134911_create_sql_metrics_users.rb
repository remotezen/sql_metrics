class CreateSqlMetricsUsers < ActiveRecord::Migration
  def change
    create_table :sql_metrics_users do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
