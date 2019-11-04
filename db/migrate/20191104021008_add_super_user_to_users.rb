class AddSuperUserToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :super_user, :boolean, default: false
  end
end
