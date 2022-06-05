class CreateProceedings < ActiveRecord::Migration[7.0]
  def change
    create_table :proceedings do |t|
      t.string :name
      t.string :amount
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
