class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :programmer, index: true
      t.references :project, index: true
      t.string :task

      t.timestamps
    end
  end
end
