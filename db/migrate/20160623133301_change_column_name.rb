class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :dishes, :alergyInfo, :allergy_info
  end
end
