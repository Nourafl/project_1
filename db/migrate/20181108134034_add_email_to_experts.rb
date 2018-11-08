class AddEmailToExperts < ActiveRecord::Migration[5.2]
  def change
    add_column :experts, :email, :string
  end
end
