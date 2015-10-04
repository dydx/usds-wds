require 'rails/generators'

module Wds
  class ListGenerator < Rails::Generators::Base
    desc 'List WDS Components'

    def list
      puts 'Available Components'
      puts '===================='

      components.each do |filename|
        puts '-' + filename.gsub(/_|\.html.erb/, '')
      end
    end

    private

    def components
      wds_components_dir = File.expand_path('../../../source', __FILE__)
      stylesheets = Dir.entries(wds_components_dir)
      stylesheets.reject {|f| f == '.' || f == '..' }
    end
  end

  class ImportGenerator < Rails::Generators::Base
    desc 'Imports WDS Components'
    source_root File.expand_path("../../../source", __FILE__)
    argument :snippet, type: :string, required: true

    def copy_html
      copy_file_if_exists(
        partial_name,
        File.join('app', 'views', 'wds', partial_name),
      )
    end

    def copy_styles
      copy_file_if_exists(
        File.join('stylesheets', 'wds', stylesheet_name),
        File.join('app', 'assets', 'stylesheets', 'wds', stylesheet_name),
      )
    end

    def copy_javascripts
      copy_file_if_exists(
        javascript_path,
        File.join('app', 'assets', 'javascripts', 'wds', javascript_name),
      )
    end

    private

    def copy_file_if_exists(source, destination)
      if File.exists?(File.join(self.class.source_root, source))
        copy_file source, destination
      end
    end

    def partial_name
      "_#{snippet.underscore}.html.erb"
    end

    def stylesheet_name
      "_#{snippet.dasherize}.scss"
    end

    def javascript_name
      "#{snippet.underscore}.js"
    end

    def javascript_path
      File.join(
        "javascripts",
        "wds",
        javascript_name
      )
    end

  end
end