class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)

      item = req.path.split("/items/").last #turn /songs/Sorry into Sorry
      song = @@items.find{|s| s.name == item}

      resp.write item.name
    end

    resp.finish
  end

end
