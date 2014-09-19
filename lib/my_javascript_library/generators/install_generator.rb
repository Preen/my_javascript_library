require 'rails/generators'

module MyJavascriptLibrary
	module Generators
		class InstallGenerator < ::Rails::Generators::Base
			def add_assets
				base_functions = File.join(File.dirname(__FILE__),"..", "..", "..", "vendor", "assets", "javascripts", "base-functions.coffee")
        create_file "app/assets/javascripts/base-functions.coffee", File.read(base_functions)
       	insert_into_file "app/assets/javascripts/application#{detect_js_format[0]}", "#{detect_js_format[1]} require base-functions\n", :after => "jquery_ujs\n"
			end

			def detect_js_format
				return ['.coffee', '#='] if File.exist?('app/assets/javascripts/application.coffee')
				return ['.js.coffee', '#='] if File.exist?('app/assets/javascripts/application.js.coffee')
				return ['.js', '//='] if File.exist?('app/assets/javascripts/application.js')
			end			
		end
	end
end