class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :hashed_password
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end

# User.create(username: 'ronald', email: 'ronald@example.com', hashed_password: 'password', first_name: 'ronald', last_name: 'chacon')

