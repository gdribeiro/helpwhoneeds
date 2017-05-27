class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :type, :string
    add_column :users, :name, :string
    add_column :users, :cpf, :string
    add_column :users, :cnpj, :string
  end
end
