class TypesGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def create_initializer_file
    template "types.tt", "app/types/#{file_name}_types.rb"
  end
end
