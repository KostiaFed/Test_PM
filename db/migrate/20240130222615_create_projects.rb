class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string  :name, null: false
      t.string  :descriprion

      t.timestamps
    end
  end
end
