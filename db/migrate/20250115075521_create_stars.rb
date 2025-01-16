class CreateStars < ActiveRecord::Migration[7.2]
  def change
    create_table :stars do |t|
      t.string :name
      t.text :description
      t.string :distance
      t.string :lifespan
      t.string :fact
      t.string :size

      t.timestamps
    end
  end
end
