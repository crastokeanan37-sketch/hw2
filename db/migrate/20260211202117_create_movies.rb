class CreateMovies < ActiveRecord::Migration[8.1]
  def change
    create_table :movies do |t|
      t.string  :title, null: false
      t.integer :year_released, null: false
      t.string  :rated
      t.references :studio, null: false, foreign_key: true

      t.timestamps
    end
  end
end

