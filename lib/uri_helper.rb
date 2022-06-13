module URI
  # for PayPal client
  def self.escape(string)
    URI.encode_www_form_component(string).gsub('+', '%20')
  end
  puts "URI Loaded"
end
