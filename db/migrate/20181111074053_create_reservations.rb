class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :firstName
      t.string :lastName
      t.date :dob
      t.string :city
      t.string :email
      t.integer :phone
      t.boolean :pregcase1
      t.boolean :healthproblem
      t.boolean :pregcase2
      t.boolean :motordevelopment
      t.boolean :languagedevelopment
      t.integer :wordshas
      t.boolean :interventionreceived
      t.boolean :regresskills
      t.boolean :medicalissue
      t.boolean :repetitivebehav
      t.boolean :socialinteraction
      t.boolean :eyecontact
      t.boolean :gesture
      t.text :comment

      t.timestamps
    end
  end
end
