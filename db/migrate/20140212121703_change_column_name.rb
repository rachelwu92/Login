class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column(:Users, :username, :user)
  end
end
