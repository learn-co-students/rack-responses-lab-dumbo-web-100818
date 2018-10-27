class Application

  def call(env)
    resp = Rack::Response.new
    noon = 12
    time = Kernel.rand(0..24)
    if time < noon
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
