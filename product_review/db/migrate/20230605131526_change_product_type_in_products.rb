class ChangeProductTypeInProducts < ActiveRecord::Migration[6.1]
  def change
    def change
      rename_column :products, :type, :text
    end
  end
end
