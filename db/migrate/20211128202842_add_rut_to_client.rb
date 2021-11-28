class AddRutToClient < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :rut, :integer
  end
end
