class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :gallery, index: true
      t.string :name
      t.string :file_path

      t.timestamps
    end
  end
end
