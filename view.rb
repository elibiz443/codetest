class View
  def initialize(page, data = {})
    @data = data
    @page = page
    file = File.join(File.dirname(__FILE__), "./app/views/#{page}.html.erb")
    @view = File.read(file)
  end

  def page_info
    @data[:page_info]
  end

  def render
    ERB.new(@view).result(binding)
  end
end

