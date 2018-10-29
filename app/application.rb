class Application

    def call(env)
      resp = Rack::Response.new

        if (00..12).include?(Time.now.hour)
          resp.write "Good Morning!"
        elsif (12..24).include?(Time.now.hour)
          resp.write "Good Afternoon!"
        end

      resp.finish
    end

end
