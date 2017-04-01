class AddTimestampsToBooksAndCategories < ActiveRecord::Migration
  def change
    add_timestamps :books
    add_timestamps :categories
  end
end
