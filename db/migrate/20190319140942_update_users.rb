class UpdateUsers < ActiveRecord::Migration[5.2]
  def change
    @u = User.find_by( email: 'admin@email.ie' )
   @u.update_attribute :admin, true
    end
   end
   