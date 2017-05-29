class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.decimal :goal_amount
      t.decimal :current_amount
      t.timestamps
    end
  end
end
