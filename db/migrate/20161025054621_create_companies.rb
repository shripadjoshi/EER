class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :website
      t.text :address
      t.integer :country_id, :limit => 8
      t.integer :state_id, :limit => 8
      t.string :city
      t.integer :pincode, :limit => 8
      t.integer :phone_no, :limit => 8
      t.integer :mobile_no, :limit => 8
      t.string :company_type
      t.string :industry_type

      t.timestamps
    end
  end
end
