class CreateExperts < ActiveRecord::Migration[5.2]
  def change
    create_table :experts do |t|
      t.string :name
      t.string :major
      t.text :bio
      t.decimal :rate
      t.string :service_id
      t.string :integer
      t.string :image

      t.timestamps
    end
  end
end
