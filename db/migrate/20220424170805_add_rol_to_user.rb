class AddRolToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :rol, :integer
  end
end
