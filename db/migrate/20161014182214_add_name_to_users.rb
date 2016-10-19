class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :phone, :bigint
    add_column :users, :latitud, :float
    add_column :users, :longitud, :float
    add_column :users, :img_path, :string
    add_column :users, :is_female, :boolean, default: false    
  end
end
 
 
