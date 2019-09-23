class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.date :published
      t.string :image

      t.timestamps
    end
  end
end
