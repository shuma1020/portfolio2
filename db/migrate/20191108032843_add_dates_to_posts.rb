class AddDatesToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :depature_date, :date
    add_column :posts, :return_date, :date
    remove_column :posts, :date
    remove_column :posts, :dapature_time, :time
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
