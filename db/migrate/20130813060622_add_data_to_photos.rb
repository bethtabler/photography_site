class AddDataToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :name, :string
    add_column :photos, :date_taken, :datetime
  end
end
