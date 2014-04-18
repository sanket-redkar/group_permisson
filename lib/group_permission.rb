require "group_permission/version"

module GroupPermission

  class Engine < Rails::Engine
  end

  _root_ = File.expand_path('../../',  __FILE__)
  require "#{_root_}/app/models/concerns/groups.rb"

end
