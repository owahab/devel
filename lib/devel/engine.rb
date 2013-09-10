require 'devel/action_view/view_logger'
require 'devel/action_view/view_formatter'
require 'devel/action_controller/view_renderer'

module Devel
  class Engine < ::Rails::Engine
    initializer 'devel.initialize' do |app|
      # Register our view renderer
      app.config.to_prepare do
        ::ActionController::Base.send :helper, Devel::ActionController::ViewRenderer
      end
    end
  end
end