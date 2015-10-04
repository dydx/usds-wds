require 'rails/generators'

module Wds
  class ListGenerator < Rails::Generators::Base
    desc 'List WDS Components'

    def list
      puts 'Available Components'
      puts '===================='

      components.each do |filename|
        puts '-' + filename.gsub(/_|\.erb/, '')
      end
    end

    private
    def components
      wds_components_dir = File.expand_path('../../../source', __FILE__)
      stylesheets = Dir.entries(wds_components_dir)
      stylesheets.reject {|f| f == '.' || f == '..' }
    end
  end
end