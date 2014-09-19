module MyJavascriptLibrary
  class Engine < ::Rails::Engine
  	isolate_namespace Mjl::Rails
    initializer 'my_javascript_library.load_my_javascript_library' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/vendor"
    end
  end
end


