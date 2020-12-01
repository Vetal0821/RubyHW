require "erb"
require './app/lib/logic'

class Pet
  include Logic

 #----------> def self.call(env) <----------
  def self.call(env)
    new(env).response.finish
  end

#----------> def initialize(env) <----------
  def initialize(env)
    @req    = Rack::Request.new(env)
    @feed = 100
    @health = 100
    @sleeping = 100
    @mood = 100
    @relax = 0
@pet_cleanliness = 100  
@pet_ruby = 100
    $NEEDS  = %w[health feed sleeping mood pet_cleanliness pet_ruby]
  end

#----------> def response <----------
  def response
    case @req.path
    when '/'
      Rack::Response.new(render("form.html.erb"))

#----------> when '/initialize' <----------
    when '/initialize'
      Rack::Response.new do |response|
        response.set_cookie('health', @health)
        response.set_cookie('feed', @feed)
        response.set_cookie('sleeping', @sleeping)
        response.set_cookie('mood', @mood)
        response.set_cookie('relax', @relax)

#----------> не підключено ще <----------
response.set_cookie('pet_cleanliness', @pet_cleanliness)
response.set_cookie('pet_ruby', @pet_ruby)
#----------> не підключено ще <----------

        response.set_cookie('name', @req.params['name'])
        response.redirect('/start')
      end

#----------> when '/exit' <----------
    when '/exit'
      Rack::Response.new('Game Over', 404)
      Rack::Response.new(render("gameover.html.erb"))

#----------> when '/rest' <----------
    when '/rest'
      return Logic.rest_params(@req, 'relax') if @req.params['relax']
      if get("relax") >= 100
        Rack::Response.new('Game complete', 404)
        Rack::Response.new(render("complete.html.erb"))
      else
        Rack::Response.new(render("rest.html.erb"))
      end
#----------> when '/start' <----------
    when '/start'
      if get("health") <=0 || get("feed") <= 0 || get("sleeping") <= 0 || get("mood") <= 0
        

        Rack::Response.new('Game Over', 404)
        Rack::Response.new(render("gameover.html.erb"))
      else
        Rack::Response.new(render("index.html.erb"))
      end
#----------> when '/change' <----------
    when '/change'
      return Logic.change_params(@req, 'health') if @req.params['health']
      return Logic.change_params(@req, 'feed')   if @req.params['feed']
      return Logic.change_params(@req, 'sleeping')  if @req.params['sleeping']
      return Logic.change_params(@req, 'mood')  if @req.params['mood']
      return Logic.change_params(@req, 'relax')  if @req.params['relax']

#----------> не підключено ще <----------
return Logic.change_params(@req, 'pet_cleanliness')  if @req.params['pet_cleanliness'] 
return Logic.change_params(@req, 'pet_ruby')  if @req.params['pet_ruby'] 
#----------> не підключено ще <----------


    else
      Rack::Response.new('Not Found', 404)
    end
  end

#----------> def render(template) <----------
  def render(template)
    path = File.expand_path("../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end

#----------> def name <----------
  def name
    name = @req.cookies['name'].delete(' ')
    name.empty? ? 'Pet' : @req.cookies['name']
  end

#----------> def get(attr) <----------
  def get(attr)
    @req.cookies["#{attr}"].to_i
  end
end