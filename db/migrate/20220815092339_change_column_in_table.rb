class ChangeColumnInTable < ActiveRecord::Migration[7.0]
  def change
    change_column(:users, :isAdmin, :boolean)
  end
end
