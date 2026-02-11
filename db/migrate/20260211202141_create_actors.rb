class CreateActors < ActiveRecord::Migration[8.1]
  def change
    create_table :actors do |t|
      t.string :name, null: false
      t.references :agent, foreign_key: true

      t.timestamps
    end
  end
end

