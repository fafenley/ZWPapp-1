class CreateEvidences < ActiveRecord::Migration
  def change
    create_table :evidences do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.integer :projectID
      t.string :location

      t.timestamps
    end
  end
end
