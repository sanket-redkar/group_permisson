class TheGroupGenerator < Rails::Generators::NamedBase

  def generate_controllers
    if gen_name == 'install'
      copy_yml
    else
      puts 'Group Generator - wrong Name'
      puts 'Try to use install'
    end
  end

  private

  def root_path; GroupPermission::Engine.root; end

  def gen_name
    name.to_s.downcase
  end

  def copy_yml
    copy_file "#{root_path}/config/permisson.rb", "config/permisson.rb"
  end
end