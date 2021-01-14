class CreateBirds < ActiveRecord::Migration[6.1]
  def change
    create_table :birds do |t|
      t.string :color
      t.string :size
      t.integer :age

      t.timestamps
    end
  end
end
