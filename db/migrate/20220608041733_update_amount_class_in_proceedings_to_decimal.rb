class UpdateAmountClassInProceedingsToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :proceedings, :amount, "numeric USING CAST(amount AS numeric)"

    change_column :proceedings, :amount, :decimal, precision: 9, scale: 2
  end
end
