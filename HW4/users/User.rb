require_relative "../pet/Animal.rb"
require_relative "../pet/Pet.rb"

class User
  attr_accessor :username, :password

#----------> def initialize <----------
  def initialize(username, password)
    @username = username
    @password = password
    @role = 'user'
  end

#----------> def start_game <----------
  def start_game
    puts "Тамагочи"
    pet_init()

      while true
#----------> Инструкция для вывода на экран <----------
      puts"----------> Инструкция как управлять своим питомцем <----------"
      puts"Нажмите 1 чтобы покормить вашего питомца"
      puts"Нажмите 2 чтобы покупать вашего питомца"
      puts"Нажмите 3 чтобы выгулять вашего питомца"
      puts"Нажмите 4 чтобы отправить спать вашего питомца"
      puts"Нажмите 5 чтобы отправить в туалет вашего питомца"
      puts"Нажмите 6 чтобы убрать в комнате вашего питомца"
      puts"Нажмите 7 чтобы полечить вашего питомца"
      puts"Нажмите 8 Информация о питомце"
      puts"Нажмите 9 Просмотр описания методов которые мы используем"
      puts"Для завершения игры наберте exit"

#----------> Роль супер администратора <----------
      puts"----------> Супер администратор может <----------"
      puts"- Изменять любое значение животные на то, которое он захочет"
      puts"- Изменять имя животного"
      puts"- Изменять тип животного"
      puts"- Убить животное"
      puts"- Сбросить данные до дефолтных"
      puts"- Изменить имя владельца"
      puts"- Выполнять действия по регламенту"

#----------> command <----------
      command = gets.chomp()
      case command
#----------> when 1 <----------
      when "feed"
        @pet.feed()
#----------> when 2 <----------
      when "wash"
        @pet.wash
#----------> when 3 <----------
      when "play"
        @pet.play
#----------> when 4 <----------
      when "sleep"
        @pet.sleep
#----------> when 5 <----------
      when "toilet"
        @pet.toilet
#----------> when 6 <----------
      when "clean"
        @pet.clean
#----------> when 7 <----------
      when "healing"
        @pet.healing
#----------> when 8 <----------
      when DisplayingInformation
        @pet.DisplayingInformation
#----------> when 9 <----------       
      when "help" 
        @pet.help
#----------> when clear <---------- 
      when "clear"
        system "cls"
#----------> when exit <---------- 
      when "exit"
        exit
      else
        puts "Подсказка "
      end
    end
  end

#----------> pet_init() <---------
      def pet_init()
        print "Выберите тип животного "
        animal = gets.chomp
        print "Выберите имя животного "
        name = gets.chomp
        username = @username
        @pet = Pet.new(animal, name, username)
        print "#{animal} #{name} родился "
      end

    #----------> def save <---------
     def save
       yaml = YAML.dump(self)
        File.open("./database/users.yml", 'w') { |file| file.puts(yaml) }
      end
end
