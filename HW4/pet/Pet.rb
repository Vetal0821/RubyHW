require "yaml"
require_relative "Animal.rb"

class Pet < Animal
  attr_accessor :health, :mood, :hunger, :sleeping, :pet_toilet, :pet_cleanliness, :user, :DisplayingInformation

  def initialize(animal, name, username)
    super(animal, name)
    @user = username
    @health = 100
    @mood = 100
    @hunger = 5
    @sleeping = 5
    @pet_toilet = 5
    @pet_cleanliness = 100
    
  end

#----------user actions----------

#----------> def feed <----------
  def feed
    puts "Вы кормите #{@name}"
    @hunger += rand(5)
    @health += rand (5)
    puts "После того как вы покормили вашего питомца #{@hunger}"
    save()
    pastTime()
  end

#----------> wash <----------
  def wash
    puts "Вы купаете #{@name}"
    @pet_cleanliness += rand(5)
    @mood -= rand(5)
    puts "После купания #{@pet_cleanliness}"
    puts "Настроение: = #{@mood}"
    save()
    pastTime()
  end

#----------> play <----------
  def play
    puts "Вы играете с #{@name}"
    @mood += rand(5)
    @hunger -= rand(5)
    @sleeping -= rand(5)

    puts "После игры :"
    puts "Голод = #{@hunger}"
    puts "Настроение: = #{@mood}"
    puts "Сон = #{@sleeping}"
      save()
    pastTime()
  end

#----------> sleep <----------
  def sleep
    puts "#{@name} спит "
    @mood += rand(5)
    @hunger -= rand(5)
    @sleeping += rand(15)

    puts "После сна :"
    puts "Hunger = #{@hunger}"
    puts "Mood: = #{@mood}"
    puts "Sleeping = #{@sleeping}"
    save()
    pastTime()
  end

#----------> toilet <----------
  def toilet
    puts "#{@name} в туалете "
    @hunger -= rand(5)
    @sleeping -= rand(5)
    @pet_cleanliness -= rand(5)
    @health -= rand (5)

    puts "После туалета :"
    puts "Hunger = #{@hunger}"
    puts "pet_cleanliness: = #{@pet_cleanliness}"
    puts "Sleeping = #{@sleeping}"
    save()
    pastTime()
  end

#----------> DisplayingInformation <----------
  def DisplayingInformation
    puts "Питомец: #{@animal}"
    puts "Имя: #{@name}"
    puts "Жизнь: #{@health}"
    puts "Еда: #{@hunger}"
    puts "Настроение: #{@mood}"
    puts "Туалет: #{@pet_toilet}"
    puts "Чистота: #{@pet_cleanliness}"
    puts "Сон: #{@sleeping}"
  end

#----------> spectate <----------
  def spectate
    puts "Вы смотрите на #{@name}"
    randomEvent()
    save()
    pastTime()
  end

#----------> help <----------
  def help
    puts "feed:---> Этот метод для кормления вашего питомца"
    puts "walk:---> Этот метод для выгула вашего питомца"               
    puts "help:---> Этот метод информационного характера"
    puts "bathe:---> Этот метод для купания вашего питомца"
    puts "clean:---> Этот метод для уборки у вашего питомца"
    puts "toilet:---> Этот метод для отправки в туалет вашего питомца"
    puts "healing:---> Этот метод для лечения вашего питомца"
    puts "sleeping:---> Этот метод для сна вашего питомца"
    puts "DisplayingInformation:---> Этот метод для показа информации"
  end

#----------> def change_animal_type <----------
  def change_animal_type
    puts "Поменять животное на "
    new_animal = gets.strip.downcase
    self.animal = new_animal
    save()
  end

#----------> def change_animal_name <----------
  def change_animal_name
    puts "Поменять имя животного на "
    new_name = gets.strip.downcase
    self.name = new_name
    save()
  end

#----------> def kill_pet <----------
  def kill_pet
    puts "Убить животное "
    self.hunger = 0
    self.pet_cleanliness = 0
    self.health = 0
    puts "Вы проиграли"
    exit
  end

#----------> def reset_stats <----------
  def reset_stats
    puts "Статистика вашего питомца сброшена до значений по умолчанию"
    self.hunger = 5
    self.pet_cleanliness = 100
    self.health = 100
    self.sleeping = 5
    self.pet_toilet = 5
    self.mood = 100
  end

#----------> def change_pet_stats <----------
  def change_pet_stats
    puts "Введите  что вы хотите изменить"
    characteristic = gets.chomp
    case characteristic
    when 'hunger'
      puts "Введите новое значение hunger"
      value = gets.strip.to_i
      self.hunger = value

    when 'pet_cleanliness'
      puts "Введите новое значение pet_cleanliness"
      value = gets.strip.to_i
      self.pet_cleanliness = value
    when 'mood'
      puts "Введите новое значение mood"
      value = gets.strip.to_i
      self.mood = value
    when 'sleeping'
      puts "Введите новое значение sleeping"
      value = gets.strip.to_i
      self.sleeping = value
    when 'pet_toilet'
      puts "Введите новое значение pet_toilet"
      value = gets.strip.to_i
      self.pet_toilet = value
    when 'health'
      puts "Введите новое значение health"
      value = gets.strip.to_i
      self.health = value
    else
      puts "Ничего не менять"
    end
  end

#----------private methods----------

  private

#----------> def pastTime <---------
  def pastTime
    hours = rand(5)
    if hours == 0
      puts "Прошло некоторое время"
    else
      puts "прошло #{hours}  час(ов)"
    end

    @hunger -= rand(5)
    @sleeping -= rand(5)
    @pet_cleanliness -= rand(5)
    DisplayingInformation()
    checkPet()
  end

#----------> def randomEvent <---------
  def randomEvent
    event = rand(5)
    case event
    when event == 1
      puts "Rain is started #{@name} Дейтвие 1"
      @pet_cleanliness -= rand(10)
      @sleeping -= rand(10)
      @mood -= rand(10)

    when event == 2
      puts "#{@name} Дейтвие 2"
      @pet_cleanliness -= rand(10)
      @sleeping -= rand(10)
      @mood += rand(20)

    when event == 3
      puts "#{name} Дейтвие 3"
      @pet_cleanliness -= rand(20)
      @sleeping -= rand(20)
      @mood += rand(10)

    when event == 4
      puts "#{name} Дейтвие 4"
      @mood -= rand(10)

    when event == 5
      puts "#{name} Дейтвие 5"
      @mood += rand(10)

    else
      puts "Ничего не произошло"
    end
  end

#----------> def hungry? <---------
  def hungry?
    @hunger <= 1
  end

#----------> def sleepy? <---------
  def sleepy?
    @sleeping <= 1
  end

#----------> def bored? <---------
  def bored?
    @mood <= 1
  end

#----------> def runnaway? <---------
  def runnaway?
    if @pet_cleanliness <= 0 && @hunger <= 0
    end
  end

#----------> def petIsDead <----------
  def petIsDead
    if @hunger <= 0 && @health <= 0
      puts "Я умираю до свидания"
      puts "Вы проиграли"
      exit

    end
  end

#----------> def checkPet() <----------
  def checkPet() 
    puts("Покорми меня") if hungry?
    puts("Поиграй со мной!") if bored?
    puts("Свобода") if runnaway?
    puts("Мне нужен отдых!") if sleepy?
    petIsDead()
  end

#----------> def save <----------
  def save
    yaml = YAML.dump(self)
    File.open("./database/pets.yml", 'w') { |file| file.puts(yaml) }
  end
end
