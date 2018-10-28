class Application

def call(env)
resp = Rack::Response.new

time = Time.now

hour = time.to_a[2]
minute = time.to_a[1]

if hour > 12 && minute > 00
  resp.write "Good Afternoon!"
else
  resp.write "Good Morning!"
end
resp.finish
end

end
