class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :capital
      t.string :membership
      t.string :population
      t.string :state
      t.string :language
      t.string :money
      t.text :flag

      t.timestamps
    end
  end
end
