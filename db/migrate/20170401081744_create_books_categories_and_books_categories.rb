class CreateBooksCategoriesAndBooksCategories < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
    end

    create_table :categories do |t|
      t.string :name
    end

    create_join_table :books, :categories do |t|
      t.index [:book_id, :category_id]
      t.index [:category_id, :book_id]
    end

    # add_column :books, :name, :string
  end
end
