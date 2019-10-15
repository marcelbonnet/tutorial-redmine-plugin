Redmine::Plugin.register :teste do
  name 'Redmine - Plugin Tutorial'
  author 'Marcel Bonnet'
  description 'Tutorial de plugin para Redmine'
  version '0.0.1'
  url 'https://github.com/marcelbonnet/tutorial-redmine-plugin'
  author_url 'https://github.com/marcelbonnet/'

  # http://www.redmine.org/projects/redmine/wiki/Plugin_Tutorial
  # Syntax:
  # menu(menu_name, item_name, url, options={})
  
  # #############
  # Para aparecer no menu de um projeto
  # #############
  # permission :carros, { :carros => [:index, :new, :edit] }, :public => true
  # menu :project_menu, :carros, { :controller => 'carros', :action => 'index' } , :caption => 'Carros Tutorial', :after => :activity, :param => :project_id
  # #############
  # Para aparecer no menu de aplicação
  # #############
  menu :top_menu, :carros, "/carros", :caption => 'Carros Tutorial'
end
