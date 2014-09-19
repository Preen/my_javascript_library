require 'rails/generators'

module MyJavascriptLibrary
	module Generators
		class InstallGenerator < ::Rails::Generators::Base
			def add_assets
				base_functions = File.join(File.dirname(__FILE__),"..", "..", "..", "..", "vendor", "assets", "javascripts", "base-functions.coffee")
        create_file "app/assets/javascripts/base-functions.coffee", File.read(base_functions)
			end
		end
	end
end