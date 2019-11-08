class AddTimeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :depature_time, :time
    add_column :posts, :memo, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
