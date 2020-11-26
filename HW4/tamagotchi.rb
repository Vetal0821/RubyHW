require_relative "pet/Animal.rb"
require_relative "pet/Pet.rb"
require_relative "users/User.rb"
require_relative "users/Admin.rb"
require_relative "users/Superadmin.rb"

#----------> def game <----------
def game
  print "Тамагочи"
  log_in()
  @user.save()
  @user.start_game()
  @user.pet_init()
end

#----------> def log_in <----------
def log_in
  print "Введите имя пользователя: "
  @username = gets.chomp
  print "Введите пароль: "
  @password = gets.chomp
  if is_admin?
    @user = Admin.new(@username, @password)
    puts "Вы вошли как #{@username} "
  end
  if is_superadmin?
    @user = Superadmin.new(@username, @password)
    puts "Вы вошли как #{@username} "
  end

  if is_user?
    @user = User.new(@username, @password)
    puts "Вы вошли как #{@username} "
  end
end

#----------> def is_admin? <----------
def is_admin?
  @username == 'admin' && @password == '1'
end

#----------> def is_superadmin? <----------
def is_superadmin?
  @username == 'superadmin' && @password == '2'
end

#----------> def is_user? <----------
def is_user?
  @username == 'guest' && @password == '3'
end

game()