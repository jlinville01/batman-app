class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :release_date
      t.string :synopsis

      t.timestamps
    end
  end
end
