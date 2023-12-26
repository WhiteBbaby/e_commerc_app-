class CreateElectronics < ActiveRecord::Migration[7.1]
  def change
    create_table :electronics do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.text :fulldescription
      t.string :image

      t.timestamps
    end
  end
end
