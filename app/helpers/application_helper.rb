module ApplicationHelper
  def meta_tag(name, value)
    %(<meta name="#{name}" content="#{Rack::Utils.escape_html(value)}"/>).html_safe
  end

  def my_button_to name, options = {}, html_options = {} # or some variation
    # eg. deal with options hash the way button_to deals with it here?
    content_tag :button, html_options = nil do
      raw name
    end
  end
end
