class AddAdminToClient < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :admin, :boolean
  end
end
