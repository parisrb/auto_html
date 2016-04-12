AutoHtml.add_filter(:html_escape).with(whiteliste_tags: []) do |text, options|
  CGI.escapeHTML text, elements: options[:whiteliste_tags]
end
