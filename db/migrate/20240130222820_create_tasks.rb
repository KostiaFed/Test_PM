class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string  :name, null: false
      t.string  :descriprion
      t.string  :status, default: "new"
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
