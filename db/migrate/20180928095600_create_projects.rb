class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :content
      t.belongs_to :user

      t.timestamps
    end
  end
end
