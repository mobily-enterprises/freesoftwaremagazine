#!/usr/bin/env ruby
# frozen_string_literal: true

require "webrick"

ROOT = File.expand_path("..", __dir__)
SITE = File.join(ROOT, "_site")

unless File.file?(File.join(SITE, "index.html"))
  warn "Built site not found at _site/index.html."
  warn "Run `npm run check` or `bundle exec jekyll build` first."
  exit 1
end

host = ENV.fetch("HOST", "127.0.0.1")
port = Integer(ENV.fetch("PORT", "4000"))
url_host = host == "0.0.0.0" ? "127.0.0.1" : host

puts "Serving existing Jekyll output from _site"
puts "No build or regeneration will run."
puts "URL: http://#{url_host}:#{port}/"
puts "Press Ctrl-C to stop."

server = WEBrick::HTTPServer.new(
  BindAddress: host,
  Port: port,
  DocumentRoot: SITE,
  AccessLog: [],
  Logger: WEBrick::Log.new($stderr, WEBrick::Log::WARN)
)

%w[INT TERM].each do |signal|
  trap(signal) { server.shutdown }
end

server.start
