class AddLogoColumnToCompanies < ActiveRecord::Migration[5.0]
  def up
    add_attachment :companies, :logo
  end

  def down
    remove_attachment :companies, :logo
  end
end
