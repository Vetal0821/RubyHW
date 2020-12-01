module Logic
  def self.change_params(req, name)

    Rack::Response.new do |response|
      response.set_cookie(name, req.cookies["#{name}"].to_i + 5) if req.cookies["#{name}"].to_i < 100

      need = ($NEEDS - [name]).sample

      response.set_cookie(need, req.cookies["#{need}"].to_i - 5 )
   
      response.redirect('/start')
    end
  end

  def self.rest_params(req, name)

    Rack::Response.new do |responses|
      responses.set_cookie(name, req.cookies["#{name}"].to_i + 50)

      responses.redirect('/rest')
    end
  end

end
