class Application

  def call(env)

    resp = Rack::Response.new

    t = Time.now
    hour = t.hour
    # resp.write "#{hour}"
    # resp.write "#{t}"

    if hour < 12
      resp.write "Good Morning"
    elsif
      resp.write "Good Afternoon"
    end

    resp.finish
  end
end
