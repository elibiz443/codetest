require 'rack'
require_relative 'view'
require_relative 'routes'
require_relative './app/main/content'

class Server
  def call(env)
    route = Routes.new(env).name
    status = (route.match(/^\d+$/) || "200").to_s
    response_body = View.new(route, page_info: $display_info).render

    [status, {}, [response_body]]
  end
end
