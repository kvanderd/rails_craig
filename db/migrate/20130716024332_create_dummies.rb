class CreateDummies < ActiveRecord::Migration
  def change
    create_table :dummies do |t|
      t.string :name
      t.string :height
      t.integer :age

      t.timestamps
    end
  end
end
