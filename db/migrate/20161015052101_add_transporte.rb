class AddTransporte < ActiveRecord::Migration
  def change
    add_column :users, :vehiculo, :boolean
  end
end
