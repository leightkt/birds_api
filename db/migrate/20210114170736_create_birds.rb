class CreateBirds < ActiveRecord::Migration[6.1]
  def change
    create_table :birds do |t|
      t.string :color
      t.string :size
      t.integer :age
      t.references :tree, foreign_key: true
      t.timestamps
    end
  end
end
