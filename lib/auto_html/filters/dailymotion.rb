AutoHtml.add_filter(:dailymotion).with(:width => 480, :height => 360) do |text, options|
  text.gsub(/http:\/\/www\.dailymotion\.com.*\/video\/(.+)_*/) do
    video_id = $1
    options ||= {autoplay: 0}
    width = options.delete :width
    height = options.delete :height
    url = "//www.dailymotion.com/embed/video/#{video_id}"

    if options.present?
      url+="?#{URI.encode_www_form(options)}"
    end

    "<iframe src='#{url}' frameborder='0' width='#{width}' height='#{height}' allowfullscreen></iframe>"
  end
end


