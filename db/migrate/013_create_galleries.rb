class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.references :photographer, index: true
      t.string :name

      t.timestamps
    end
  end
end
