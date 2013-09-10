module Devel
  module ActionView
    module ViewFormatter
      module ClassMethods
        # def render(*args, &block)
        #   puts "UI Dev Render method fired #1"
        # end
      end
    
      module InstanceMethods
        def render
          puts '$$$$$$$$$$$$'
        end
          
        # def render(context, options)
        #   super(context, options)
        #   puts '##########################################'
        #   # pp self
        #   # debugger
        #   # self.view_flow.content[:layout] = "<!-- BEGIN: #{args[0][:partial]} -->\n #{self.view_flow.content[:layout]}\n<!-- END: #{args[0][:partial]} -->"
        #   # puts args
        # end
      end
    
      def self.included(base)
        base.extend ClassMethods
        base.send :include, InstanceMethods
      end
    end
  end
end