class SampleNameChangeColumnType < ActiveRecord::Migration[5.2]
  def change
    change_column(:users, :streetnumber, :string)
  end
end
