class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.references :company, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
