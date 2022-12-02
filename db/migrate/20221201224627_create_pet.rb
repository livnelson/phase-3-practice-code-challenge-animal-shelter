class CreatePet < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :species
      t.boolean :adopted?
      t.belongs_to :shelter
      t.belongs_to :adopter
    end
  end
end
