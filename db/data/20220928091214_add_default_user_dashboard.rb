class AddDefaultUserDashboard < SeedMigration::Migration
  def up
    ud = UsersDashboard.create_or_find_by!(name: 'Developer', email: 'adminproject@gmail.com', password: '123456', password_confirmation: '123456')
    UsersDashboardRole.create_or_find_by!(users_dashboard_id: ud.id, can_manage_user_dashboard_role: true)
  end

  def down
    UsersDashboard.find_by(email: 'adminproject@gmail.com').try(:destroy)
  end
end
