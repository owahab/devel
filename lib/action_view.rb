module ::ActionView
  class PartialRenderer < ::ActionView::AbstractRenderer
      def render(context, options, block)
        super(context, options, block)
        puts '##########################################'
        # pp self
        # debugger
        # self.view_flow.content[:layout] = "<!-- BEGIN: #{args[0][:partial]} -->\n #{self.view_flow.content[:layout]}\n<!-- END: #{args[0][:partial]} -->"
        # puts args
      end
    end
  end
  
  # class Renderer
  #   def render(context, options)
  #     super(context, options)
  #     puts '##########################################'
  #     # pp self
  #     # debugger
  #     # self.view_flow.content[:layout] = "<!-- BEGIN: #{args[0][:partial]} -->\n #{self.view_flow.content[:layout]}\n<!-- END: #{args[0][:partial]} -->"
  #     # puts args
  #   end
  # end
end