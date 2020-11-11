=begin
Задание 2. Тамагочи (те, кому за 30, вспомнят:D)
Необходимо написать программу-тамагочи 
(https://ru.wikipedia.org/wiki/%D0%A2%D0%B0%D0%BC%D0%B0%D0%B3%D0%BE%D1%87%D0%B8 ).
Вы должны создать класс Pet. У каждого питомца должно быть имя,
задаваемое при создании. Должно быть название животного (Собачка, Кошка, Попугай или ...),
жизни, настроение, показатель голода, сна, настроения + два показателя на своё усмотрение.
Должен быть закрытый метод (под private), который бы эмулировал прохождение 1 дня (или часа,
или нескольких часов),когда бы некоторые показатели менялись, — например питомец становился более голодным,
менее выспавшемся (на случайную величину в пределах заданных) и т.д.
Должно быть 10-20 методов, которые позволяли бы совершать с животным определенные
действия, например, "покормить", "положить спать", "поиграть". Каждое из этих действий
должно менять один или несколько показателей животного, а так же вызывать закрытый 
метод прохождения времени. Например, мы можем покормить нашего питомца, но при этом
пройдет определенное кол-во времени. Должен быть метод, позволяющий просто понаблюдать
за питомцев, — в это время может произойти какое то случайное событие. При неправильном
уходе питомец может умереть, разозлиться и съесть вас (если оно плотоядное) или убежать.
Необходимо создать простенькую менюшку, чтобы с питомцем можно было поиграть с консоли.
Также должен быть метод help, который бы позволял вывести все команды для питомца и описания
к ним. В общем, нужно придумать хороший UX. 
=end



puts "Ваш виртуальный питомец Панда. Как вы назовете его?"

class Panda

	def initialize name
		@name = name			#Имя
		@health = 100			#Жизнь   
		@mood =  100			#Настроение	
		@sleep_indicator = 0	#Показатель сна
		@pet_cleanliness = 100	#Чистота питомца
		@hunger_indicator = 100	#Показатель голода
		@pet_toilet = 0			#Питомец хочет в туалет
 
		puts 'Теперь так зовут вашего виртуального питомца: ' + @name + '.'

				#Текст для пользователя		
				puts"----------> Инструкция как упраплять своим питомцем <----------"
				puts"Нажмите 1 чтобы покормить вашего питомца"
				puts"Нажмите 2 чтобы выгулять вашего питомца"
				puts"Нажмите 3 чтобы отправить в туалет вашего питомца"
				puts"Нажмите 4 чтобы убрать в комнате вашего питомца"
				puts"Нажмите 5 чтобы полечить вашего питомца"
				puts"Нажмите 6 чтобы отправить спать вашего питомца"
				puts"Нажмите 7 чтобы покупать вашего питомца"
				puts"Нажмите 8 Информация о питомце"
				puts"Нажмите 9 Просмотр описания методов которые мы используем"
				puts"Для завершения игры нажмите любую клавишу кроме тех которые упомянутые выше"

	end
	
#----------> def <----------	
	def help #Описания методов которые мы используем
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

#----------> def <----------
	def feed
		puts  @name + ' Панда ест молодой бамбук.'
		@hunger_indicator += 5	#Сытость после порции бамбука
		@sleep_indicator -= 5		#Показатель сна после приема пищи
    	@pet_cleanliness -= 5		#Чистота питомца после приема пищи
			if @hunger_indicator > 100
				@hunger_indicator = 100 - 50 		#Наказание за переедание
			TimePeriod()
			end
	end

#----------> def <----------
	def walk
		puts @name + ' на прогулке'
		@mood += 5
		@pet_cleanliness -= 5
			if @mood > 100
				@mood =  100 - 50 #Наказание за то что долго был на прогулке
			TimePeriod()
			end
	end
	
#----------> def <----------
	def toilet
		puts @name + ' хочет в туалет'
		@pet_toilet -= 5
		@sleep_indicator += 5
		@pet_cleanliness -= 5
			if @pet_toilet < 0 
				@pet_toilet = 0
			TimePeriod()
			end
	end
	
#----------> def <----------
	def clean 
				puts @name + ' питомец грязный'
				@pet_cleanliness += 5
				@sleep_indicator += 5
			if @pet_cleanliness > 100
				@pet_cleanliness = 100
			TimePeriod()
			end
	end

#----------> def <----------
	def healing
				puts "Вы полечили #{@name}"
				@health += 5
				@sleep_indicator += 5
				@pet_cleanliness -= 5
			if @health >= 100
				@health = 100
			TimePeriod()
			end
	end

#----------> def <----------
	def DisplayingInformation
		puts "Имя: #{@name}"
		puts "Жизнь: #{@health}"
		puts "Еда: #{@hunger_indicator}"
		puts "Настроение: #{@mood}"
		puts "Туалет: #{@pet_toilet}"
		puts "Чистота: #{@pet_cleanliness}"
		puts "Сон: #{@sleep_indicator}"	
	end
#----------> def <----------

	def sleeping
		@sleep_indicator += 5
			if @sleep_indicator <= 20
				puts "Вашему питомцу нужен сон"
				@health += 5
				@pet_cleanliness -= 5
			TimePeriod()
			else
				@pet_cleanliness += 5
			TimePeriod()
			end
	end

#----------> def <----------
	def bathe
				puts @name + ' питомец грязный'
				@pet_cleanliness += 5
				@sleep_indicator += 5
			if @pet_cleanliness > 100
				@pet_cleanliness = 100
			TimePeriod()
			end
	end
#----------> def <----------

private
	def TimePeriod
		hours = rand(6)
		@hunger_indicator -= 10
		@mood -= 10
		@pet_toilet += 10
		puts "После вашего последнего действия прошло #{hours} часов"	
#------------------------------------------------------------
			if @mood < 0
		puts "Питомец грустит"
			end
#------------------------------------------------------------	
			if @mood <= 20
				puts "Питомец грустит"
				@sleep_indicator = 5
			end
#------------------------------------------------------------	
			if @hunger_indicator <= 0
				@health = 0
				puts "Питомец покинул вас"
			end
#------------------------------------------------------------	
			if @hunger_indicator <= 20
				puts "Питомец хочет кушать"
			end
#------------------------------------------------------------
			if @pet_toilet >= 60
				@health -= 5
				puts "Питомец хочет в туалет"
			end
#------------------------------------------------------------
			if @health <= 20
				puts "Питомец заболел"
				@hunger_indicator -= 5
				@mood -= 5
			end
#------------------------------------------------------------
			if @pet_cleanliness >= 20
				@health -= 5
				puts "Питомец грязный"
			end
#------------------------------------------------------------	
			if @pet_cleanliness <= 0
				@pet_cleanliness = 0
				puts "Питомец чистый"
			end
#------------------------------------------------------------
			if @sleep_indicator >= 80
				puts "Питомцу нужен сон"
			end
#------------------------------------------------------------
			if @sleep_indicator >= 100
				puts "Питомцу нужен сон"
				@health -= 50
			end
#------------------------------------------------------------
			if @sleep_indicator >= 100
				@sleep_indicator = 100
			end
#------------------------------------------------------------
			if @health >= 100
				@health = 100
			end
#------------------------------------------------------------
			if @health <= 0
				puts "Питомец покинул вас"
				exit
			end
#------------------------------------------------------------
	end
end


name = gets.chomp
pet = Panda.new"#{name}"

x = gets.chomp.to_i
while x !=0
	
	case x
	when 1
		pet.feed()
		pet.DisplayingInformation()
		x = gets.chomp.to_i
	when 2
		pet.walk()
		pet.DisplayingInformation()
		x = gets.chomp.to_i
	when 3
		pet.toilet()
		pet.DisplayingInformation()
		x = gets.chomp.to_i
	when 4
		pet.clean()
		pet.DisplayingInformation()
		x = gets.chomp.to_i
	when 5
		pet.healing()
		pet.DisplayingInformation()
		x = gets.chomp.to_i
	when 6 
		pet.sleeping()
		pet.DisplayingInformation()
		x = gets.chomp.to_i
	when 7
		pet.bathe()
		pet.DisplayingInformation()
		x = gets.chomp.to_i
	when 8
		pet.DisplayingInformation()
		x = gets.chomp.to_i
		when 9
		pet.help
		x = gets.chomp.to_i
	else
			break
	end
end