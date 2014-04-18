class TheGroupGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def generate_controllers
    if gen_name == 'install'
      copy_files
    else
      puts 'Group Generator - wrong Name'
      puts 'Try to use install'
    end
  end

  private

  def root_path
    GroupPermission::Engine.root
  end

  def gen_name
    name.to_s.downcase
  end

  def copy_files
    copy_file "#{root_path}/config/permissions.yml", "config/permissions.yml"
    copy_file "#{root_path}/config/permission.rb", "config/initializers/permission.rb"
  end

end