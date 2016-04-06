class CreateBmps < ActiveRecord::Migration
  def change
    create_table :bmps do |t|
      t.integer :na
      t.integer :k
      t.integer :cl
      t.integer :bicarb
      t.integer :bun
      t.integer :cr
      t.integer :glucose
      t.references :visit, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
