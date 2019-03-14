class CreateDummyModels < ActiveRecord::Migration[5.2]
  def change
    create_table :dummy_models do |t|
      t.integer :raw_date

      t.timestamps
    end
  end
end
