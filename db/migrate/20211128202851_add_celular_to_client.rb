class AddCelularToClient < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :celular, :integer
  end
end
