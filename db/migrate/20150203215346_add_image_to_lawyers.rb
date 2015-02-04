class AddImageToLawyers < ActiveRecord::Migration
  def change
    add_column :lawyers, :image, :string
  end
end
