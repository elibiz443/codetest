class Routes
  ROUTES = {
    "/" => 'home/index',
    "/home" => 'home/index',
  }

  def initialize(env)
    if env["REQUEST_METHOD"] == "GET"
      @name = ROUTES[env["PATH_INFO"]]
    end
  end

  def name
    @name || "alerts/404"
  end
end
