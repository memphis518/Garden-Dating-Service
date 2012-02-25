# checks each path given and ensures that
# - guests have access
def guest_paths paths
  logout
  paths.each { |path| is_allowed_on path }

  logout
end

# checks each path given and ensures that
# - guests do not have access
# - users  (created by User.gen) have access
def user_paths user, paths
  logout
  paths.each { |path| is_not_allowed_on path }

  login_as user
  paths.each { |path| is_allowed_on path }

  logout
end

# checks each path given and ensures that
# - guests do not have access
# - users  (created by User.gen) do not have access
# - admins (created by create_admin) have access
def admin_paths paths
  logout
  paths.each { |path| is_not_allowed_on path }

  login_as User.gen
  paths.each { |path| is_not_allowed_on path }

  logout
  login_as create_admin
  paths.each { |path| is_allowed_on path }

  logout
end

# checks each path given and ensures that
# - guests do not have access
# - users  (created by User.gen) do not have access
# - admins (created by create_admin) do not have access
def disallowed_paths paths
  logout
  paths.each { |path| is_not_allowed_on path }

  login_as User.gen
  paths.each { |path| is_not_allowed_on path }

  logout
  login_as create_admin
  paths.each { |path| is_not_allowed_on path }

  logout
end

# when visiting given path, you should end up there
def is_allowed_on path
  visit path
  should_be_on path
end

# when visiting given path, you should NOT end up there
def is_not_allowed_on path
  visit path
  should_not_be_on path
end
