class CreateDucks < ActiveRecord::Migration[5.2]
  def change
    create_table :ducks do |t|
      t.string :name
      t.string :description
      t.references :student

      t.timestamps
    end
  end
end
