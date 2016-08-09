class ChangeEventImages < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :event_image, :string
    add_column :events, :event_images, :string, array: true, default: []
  end
end
