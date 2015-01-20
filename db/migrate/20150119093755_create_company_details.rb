class CreateCompanyDetails < ActiveRecord::Migration
  def change
    create_table :company_details do |t|
      t.string :company_name
      t.string :company_type
      t.string :pan
      t.string :vat
      t.string :registration_number
      t.string :company_address
      t.string :billing_address
      t.string :shipping_address
      t.string :company_info

      t.timestamps
    end
  end
end
