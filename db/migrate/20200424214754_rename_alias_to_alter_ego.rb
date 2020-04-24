class RenameAliasToAlterEgo < ActiveRecord::Migration[5.2]
  def change
    rename_column :characters, :alias, :alter_ego
  end
end
