class ChangeColumnsDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :simcards, :consumption, :text
  end
end
