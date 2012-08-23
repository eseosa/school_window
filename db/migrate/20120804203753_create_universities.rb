class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :name
      t.string :location
      t.text :details

      t.timestamps
    end
  end
end
