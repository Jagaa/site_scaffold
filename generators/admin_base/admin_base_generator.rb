class AdminBaseGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      
      # Controller
      m.directory "app/controllers/admin"      
            
      # Views
      m.directory "app/views/shared"
      m.file "views/shared/_admin_menu.html.erb", "app/views/shared/_admin_menu.html.erb"
      m.file "views/layouts/admin.html.erb", "app/views/layouts/admin.html.erb"
      m.file "views/layouts/login.html.erb", "app/views/layouts/login.html.erb"

			# Helpers
			m.directory "app/helpers/admin"
      m.file "helpers/admin/admin_helper.rb", "app/helpers/admin/admin_helper.rb"
      			
      # Assets
      m.directory "public/images/niceditor"      
			m.file "public/stylesheets/admin.css", "public/stylesheets/admin.css"
			m.file "public/images/niceditor/nicEditorIcons.gif", "public/images/niceditor/nicEditorIcons.gif" , :collision => :skip			
			m.file "public/javascripts/admin.js", "public/javascripts/admin.js" , :collision => :skip
			m.file "public/javascripts/nicedit.js", "public/javascripts/nicedit.js" , :collision => :skip

      m.readme "INSTALL"
    end
  end

end
