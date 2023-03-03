class ChangeColumnInAuditionsFromBelongsToToRoleId < ActiveRecord::Migration[5.2]
  def change
    rename_column :auditions, :belongs_to, :role_id
  end
end
