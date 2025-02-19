class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :status
      t.text :description

      t.timestamps
    end

    add_index :projects, :name
  end
end
