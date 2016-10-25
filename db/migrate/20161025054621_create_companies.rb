class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.text :address
      t.string :country
      t.string :state
      t.string :city
      t.integer :pincode
      t.integer :phone_no
      t.integer :mobile_no
      t.string :company_type
      t.string :industry_type

      t.timestamps
    end
  end
end
