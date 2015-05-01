class AddAuthorRefToBooks < ActiveRecord::Migration
  def change
  	remove_column :books, :author
  	
    add_reference :books, :author, index: true
    add_foreign_key :books, :authors


  end
end
