class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.integer :number
      t.integer :season
      t.string :title
      t.string :synopsis

      t.timestamps
    end
  end
end
