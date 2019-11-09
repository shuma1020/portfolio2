class AddScheduleToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :schedule, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    remove_column :posts, :dapature_time, :time
  end
end
