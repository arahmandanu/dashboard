class AddDefaultUserDashboard < SeedMigration::Migration
  def up
    UsersDashboard.create_or_find_by!(name: 'Developer', email: 'adminproject@gmail.com', password: '123456', password_confirmation: '123456')
  end

  def down
    UsersDashboard.find_by(email: 'adminproject@gmail.com').try(:destroy)
  end
end
