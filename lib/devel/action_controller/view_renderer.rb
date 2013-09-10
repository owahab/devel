module Devel
  module ActionController
    module ViewRenderer
      def render(options = {}, locals = {}, &block)
        output = ''.html_safe
        case options
        when Hash
          if block_given?
            output << "\n<!-- BEGIN: #{options[:partial]} -->\n".html_safe
            output << view_renderer.render_partial(self, options.merge(:partial => options[:layout]), &block)
            output << "\n<!-- END: #{options[:partial]} -->".html_safe
          else
            output << "\n<!-- BEGIN: #{options[:partial]} -->\n".html_safe
            output << view_renderer.render(self, options)
            output << "\n<!-- END: #{options[:partial]} -->".html_safe
          end
        else
          output << "\n<!-- BEGIN: #{options} -->\n".html_safe
          output << view_renderer.render_partial(self, :partial => options, :locals => locals)
          output << "\n<!-- END: #{options} -->".html_safe
        end
        output
      end
    end
  end
end
