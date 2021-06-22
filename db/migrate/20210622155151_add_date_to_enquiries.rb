class AddDateToEnquiries < ActiveRecord::Migration[6.0]
  def change
    add_column :enquiries, :date, :datetime
  end
end
