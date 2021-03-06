class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :imaging
      t.string :otherProcedures
      t.string :chiefComplaint
      t.string :loc
      t.string :gcs
      t.string :neuroNotes
      t.string :rhythm
      t.string :ejectionFraction
      t.string :cardioNotes
      t.string :ventSettings
      t.string :abg
      t.string :pulmonaryNotes
      t.string :npo
      t.string :diet
      t.string :tubes
      t.string :giNotes
      t.boolean :foley
      t.string :foleyPlaceDate
      t.string :renalNotes
      t.string :glucoseSticks
      t.string :endoNotes
      t.string :sirsSepsisAlert
      t.string :antibiotics
      t.string :cultures
      t.string :idNotes
      t.boolean :intact
      t.string :woundCare
      t.string :incision
      t.boolean :decubitisUlcers
      t.string :edema
      t.string :pt
      t.string :skinNotes
      t.string :assessmentPlan
      t.timestamps null: false
      t.references :patient, index: true, foreign_key: true
    end
  end
end
