class CreatePenguins < ActiveRecord::Migration
  def change
    create_table :penguins do |t|
      t.string :name
      t.string :breed
      t.string :sex
      t.text :description

      t.timestamps
    end
  end
end
