AutoHtml.add_filter(:dailymotion).with(:width => 480, :height => 360) do |text, options|
  text.gsub(/http:\/\/www\.dailymotion\.com.*\/video\/(.+)_*/) do
    video_id = $1
    options ||= {autoplay: 0}
    url_options = options.map { |k, v| "#{k}=\"#{v}\"" }.join('&')

    "<iframe src='//www.dailymotion.com/embed/video/#{video_id}?#{url_options}' frameborder='0'></iframe>"
  end
end
