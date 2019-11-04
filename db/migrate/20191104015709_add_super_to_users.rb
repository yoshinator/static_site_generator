class AddSuperToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :super, :boolean
  end
end
