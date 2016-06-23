class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :dishes, :allergy_info, :allergy_info
  end
end
