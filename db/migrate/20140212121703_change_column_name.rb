class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column(:User, :username, :user)
  end
end
