require "group_permission/version"

module GroupPermission
  # Your code goes here...


  class << self
    def create_admin_role!
      admin_role = ::Role.where(name: :admin).first_or_create!(
          name: :admin,
          title: "Role for admin",
          description: "This user can do anything"
      )
      admin_role.create_rule(:system, :administrator)
      admin_role.rule_on(:system, :administrator)
      admin_role
    end
  end

  class Engine < Rails::Engine
    # initializer "TheRole precompile hook", group: :all do |app|
    #   app.config.assets.precompile += %w( x.js y.css )
    # end

    # http://stackoverflow.com/questions/6279325/adding-to-rails-autoload-path-from-gem
    # config.to_prepare do; end
  end

  _root_ = File.expand_path('../../',  __FILE__)
  require "#{_root_}/app/models/concerns/role.rb"


end
