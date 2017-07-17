class AddUrgencyFieldToProjects < ActiveRecord::Migration[5.1]
  def change
  	add_column :projects, :urgent, :boolean
  end
end
