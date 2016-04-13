AutoHtml.add_filter(:html_escape) do |text|
  CGI.escapeHTML text
end
