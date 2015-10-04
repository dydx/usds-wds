require 'rails/generators'

module USDSWDS
  class ListGenerator < Rails::Generators::Base
    desc 'List WDS Components'

    def list
      puts 'Available Components'
      puts '===================='

      stylesheets.each do |filename|
        puts '-' + filename.gsub(/_|\.scss/, '')
      end
    end

    private
    def stylesheets
      wds_components_dir = File.expand_path('../../source/stylesheets/wds', __FILE__)
      stylesheets = Dir.entries(wds_components_dir)
      stylesheets.reject {|f| f == '.' || f == '..' }
    end
  end
end