class CreateSearchProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :search_projects do |t|
      t.string :keywords
      t.string :type
      t.boolean :urgent
      t.decimal :min_amout_asked
      t.decimal :max_amount_asked
      t.string :new
      t.string :show

      t.timestamps
    end
  end
end
