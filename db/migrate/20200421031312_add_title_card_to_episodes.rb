class AddTitleCardToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :title_card, :string
  end
end
