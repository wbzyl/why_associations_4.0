class CreateProgrammers < ActiveRecord::Migration
  def change
    create_table :programmers do |t|
      t.string :login

      t.timestamps
    end
  end
end
