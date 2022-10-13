class AppName
  def initialize(app, name)
    @app = app
    @name = name
  end

  def call(env)
    status, headers, response = @app.call(env)
    headers.merge!({'X-App-Name' => "#{@name}"})
    [status, headers, [response.body]]
  end
 end