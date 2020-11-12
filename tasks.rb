	puts "1 Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными."
print numeric_array1 = Array.new(10) { rand(-100...100) }
puts
print numeric_array1.find_all{ |elem| elem.even? }
puts
print numeric_array1.find_all{ |elem| elem.odd? }
puts
p '--------------'
	
	puts "2 Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными."
print numeric_array2 = Array.new(10) { rand(-100...100) }
puts
print numeric_array2.find_all{ |elem| elem.odd? }
puts
print numeric_array2.find_all{ |elem| elem.even? }
puts
p '--------------'

	puts "9 Дан целочисленный массив. Заменить все положительные элементы на значение минимального."
print numeric_array9 = Array.new(10) { rand(-100...100) } # розібратися з завданням 9 бо не все виводить (подивитись як буде виконано 50 задач)
puts
min = numeric_array9.min
puts
print numeric_array9.map! { |e| e > 0 ? min : e }
puts
p '--------------'

	puts "10 Дан целочисленный массив. Заменить все положительные элементы на значение максимального."
print numeric_array10 = Array.new(10) { rand(-100...100) } # розібратися з завданням 9 бо не все виводить (подивитись як буде виконано 50 задач)
puts
max = numeric_array10.max
puts
print numeric_array10.map! { |e| e > 0 ? max : e }
puts
p '--------------'

	puts "11 Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального."
print numeric_array11 = Array.new(10) { rand(-100...100) } # розібратися з завданням 9 бо не все виводить (подивитись як буде виконано 50 задач)
puts
min = numeric_array11.min
print numeric_array11.map! { |e| e < 0 ? min : e }
puts
p '--------------'

	puts "12 Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального."
print numeric_array12 = Array.new(10) { rand(-100...100) } # розібратися з завданням 9 бо не все виводить (подивитись як буде виконано 50 задач)
puts
min = numeric_array12.min
print numeric_array12 = numeric_array12.map { |e| e < 0 ? min : e }
puts
p '--------------'

	puts "13 Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию."
print numeric_array13 = Array.new(10) { rand(-100...100) } 
puts
print numeric_array13.rotate(1)
puts
p '--------------'

	puts "14 Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию."	
print numeric_array14 = Array.new(10) { rand(-100...100) } 
puts
print numeric_array14.rotate(-1)
puts
p '--------------'

	puts "25 Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент."
print numeric_array25 = Array.new(10) { rand(-100...100) }
puts
numeric_array25 = numeric_array25.map { |el| el > 0 ? [0, el] : el }.flatten
print numeric_array25
puts
p '--------------'

	puts "26 Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент."
print numeric_array26 = Array.new(10) { rand(-100...100) }
puts
numeric_array26 = numeric_array26.map { |el| el < 0 ? [0, el] : el }.flatten
print numeric_array26
puts
p '--------------'

	puts "27 Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент."	
print numeric_array27 = Array.new(10) { rand(-100...100) }
puts
numeric_array27 = numeric_array27.map { |el| el > 0 ? [el, 0] : el }.flatten
print numeric_array27
puts
p '--------------'		
																						
	puts "28 Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент."
print numeric_array28 = Array.new(10) { rand(-100...100) }
puts
numeric_array28 = numeric_array28.map { |el| el < 0 ? [el, 0] : el }.flatten
print numeric_array28
puts
p '--------------'

	puts "29 Дан целочисленный массив. Упорядочить его по возрастанию."
print numeric_array29 = [1,23,3,44,14,6,11,8,92].sort 
puts
print numeric_array29
puts
p '--------------'

	puts "30 Дан целочисленный массив. Упорядочить его по убыванию."
print numeric_array30 = [1,23,3,44,14,6,11,8,92].sort  
puts
print numeric_array30.reverse
puts
p '--------------'

	puts "33 Дан целочисленный массив. Найти индекс минимального элемента."
print numeric_array33 = Array.new(10) { rand(-100...100) }
puts
print numeric_array33.index(numeric_array33.min)
puts
p '--------------'

	puts "34 Дан целочисленный массив. Найти индекс максимального элемента."
print numeric_array34 = Array.new(10) { rand(-100...100) }
puts
print numeric_array34.index(numeric_array34.max)
puts
p '--------------'

	puts "39 Дан целочисленный массив. Найти количество минимальных элементов."																								
print numeric_array39 = Array.new(10) { rand(-100...100) }
puts
print numeric_array39.count{|el| el == numeric_array39.min}
puts
p '--------------'

	puts "40 Дан целочисленный массив. Найти количество максимальных элементов."
print numeric_array40 = Array.new(10) { rand(-100...100) }
puts
print numeric_array40.count(numeric_array40.max)
puts
p '--------------'

	"41 Дан целочисленный массив. Найти минимальный четный элемент."
print numeric_array41 = Array.new(10) { rand(-100...100) }									#.even? выбирает каждый элемент с четным индексом
puts
print numeric_array41.find_all{ |elem| elem.even? }.min
puts
p '--------------'
	
	"42 Дан целочисленный массив. Найти минимальный нечетный элемент."	
print numeric_array42 = Array.new(10) { rand(-100...100) }									#.odd? выбирает каждый элемент с нечетным индексом
puts
print numeric_array42.find_all{ |elem| elem.odd? }.min
puts
p '--------------'

	puts "43 Дан целочисленный массив. Найти максимальный четный элемент."
print numeric_array43 = Array.new(10) { rand(-100...100) }									#.even? выбирает каждый элемент с четным индексом
puts
print numeric_array41.find_all{ |elem| elem.even? }.max
puts
p '--------------'

	puts "44 Дан целочисленный массив. Найти максимальный нечетный элемент."
print numeric_array44 = Array.new(10) { rand(-100...100) }									#.odd? выбирает каждый элемент с нечетным индексом
puts
print numeric_array44.find_all{ |elem| elem.odd? }.max
puts
p '--------------'

	puts "45 Дан целочисленный массив. Найти минимальный положительный элемент."
print numeric_array45 = Array.new(10) { rand(-100...100) }
puts
puts numeric_array45.select { |x| x > 0 }.min	
puts
p '--------------'

	puts "46 Дан целочисленный массив. Найти максимальный отрицательный элемент."	
print numeric_array46 = Array.new(10) { rand(-100...100) }
puts
puts numeric_array46.select { |x| x < 0 }.max
puts
p '--------------'

	puts "47 Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале."
print numeric_array47 = Array.new(10) { rand(-100...100) }
puts
min_array_in_interval = numeric_array47[2..10]		
print min_array_in_interval.min
puts
p '--------------'

	puts "48 Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале."
print numeric_array48 = Array.new(10) { rand(-100...100) }
puts
max_array_in_interval = numeric_array48[2..10]		
print max_array_in_interval.max
puts	
p '--------------'

	puts "49 Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным."
print numeric_array49 = Array.new(10) { rand(-100...100) } #якщо прибераю print то виводить всі елементи після мінімального
puts
print numeric_array49.index(numeric_array49.min)
puts
p '--------------'
																						
	puts "50 Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным."
print numeric_array49 = Array.new(10) { rand(-100...100) } #якщо прибераю print то виводить всі елементи після максимального
puts 	#49 і 50 працюють криво і не твк як нада
print numeric_array49.index(numeric_array49.max)
puts
p '--------------'

	puts "51 Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального."
print numeric_array51 = Array.new(10) { rand(-100...100) }
puts
puts numeric_array51.reverse.rindex(numeric_array51.max)
puts
p '--------------'
																									
	puts "52 Дан целочисленный массив. Найти количество элементов, расположенных после первого минимального."
print numeric_array52	= Array.new(10) { rand(-100...100) }
puts
puts numeric_array52.reverse.rindex(numeric_array52.min)
puts
p '--------------'

	puts "57 Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или максимального) элемента."
print numeric_array57 = Array.new(10) { rand(-100...100) }
puts
puts numeric_array57.index {|x| x == numeric_array57.min || x == numeric_array57.max}																								
p '--------------'
	
	puts "58 Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента."
print numeric_array58 = Array.new(10) { rand(-100...100) } #питання чи можна реалізувати 58 задачу аналогічно 57 тільки після його обяви застосувати реверс 
puts
puts numeric_array58.rindex {|x| x == numeric_array58.min || x == numeric_array58.max}

p '--------------'

	puts "61 Дан целочисленный массив. Найти два наибольших элемента."
print numeric_array61 =  Array.new(10) { rand(-100...100) }
puts
print numeric_array61.max(2)
puts
p '--------------'

	puts "62 Дан целочисленный массив. Найти два наименьших элемента."
print numeric_array62 = Array.new(10) { rand(-100...100) }
puts
print numeric_array62.min(2)
puts
p '--------------'

	puts "71 Дан целочисленный массив. Удалить все элементы, встречающиеся менее двух раз."																								
print numeric_array71 = Array.new(10) { rand(-100...100) }
puts
numeric_array71 - numeric_array71.uniq
print numeric_array71
puts
p '--------------'
	
	puts "72 Дан целочисленный массив. Удалить все элементы, встречающиеся более двух раз."
print numeric_array72 = Array.new(10) { rand(-100...100) }
puts
numeric_array72.reject! { |elem| numeric_array72.count(elem) >= 2 }
print numeric_array72
puts
p '--------------'
		
	puts "73 Дан целочисленный массив. Удалить все элементы, встречающиеся ровно два раза."
print numeric_array73 = Array.new(10) { rand(-100...100) }
puts
repeating_elements_only_2 = numeric_array73.uniq.select { |x| numeric_array73.count(x) == 2 }
repeating_elements_only_2.each { |x| numeric_array73.delete(x) }
print numeric_array73
puts
p '--------------'

puts "73 Дан целочисленный массив. Удалить все элементы, встречающиеся ровно два раза." #другий спосіб реалізації
print numeric_array73_1 = Array.new(10) { rand(-100...100) }
puts
numeric_array73_1.reject! { |elem| numeric_array73_1.count(elem) == 2 }
print numeric_array73_1
puts
p '--------------'
	
	puts "74 Дан целочисленный массив. Удалить все элементы, встречающиеся ровно три раза."		
print numeric_array74 = Array.new(10) { rand(-100...100) }
puts
repeating_elements_only_3 = numeric_array74.uniq.select { |x| numeric_array74.count(x) == 3 }
repeating_elements_only_3.each { |x| numeric_array74.delete(x) }
print numeric_array74
puts
p '--------------'

puts "74 Дан целочисленный массив. Удалить все элементы, встречающиеся ровно три раза." #другий спосіб реалізації
print numeric_array74_1 = Array.new(10) { rand(-100...100) }
puts
numeric_array74_1.reject! { |elem| numeric_array74_1.count(elem) == 3 }
print numeric_array74_1
puts
p '--------------'
																					
	puts "75 Дан целочисленный массив. Найти среднее арифметическое модулей его элементов."
print numeric_array75 = Array.new(10) { rand(-100...100) }
puts
print (numeric_array75.inject(0){ |sum, i| sum + i.abs }.to_f) / numeric_array75.size
puts
p '--------------'

	puts "77 Дано целое число. Найти сумму его цифр."
print numeric77 = 123  # зроблено по кривому потрібно пізніше переробити нормально (подивитись як буде виконано 50 задач)
s1 = numeric77%10
s2 = (numeric77 - s1)%10
s3 = (numeric77 - s2)%10
s = s1 + s2 + s3
print s 
puts
p '--------------'
	
	puts "77 Дано целое число. Найти сумму его цифр. 2 варіант готова функція"
print num77 = 12345
puts num77.digits.sum
puts	
p '--------------'																								

	puts "78 Дано целое число. Найти произведение его цифр."
print num78 = 456
puts num78.digits.inject(:*)
puts	
p '--------------'

	puts "82 Дано число А и натуральное число N. Найти результат следующего выражения 1 + А + А*2 + А*3 + … + А*N."
A,N = 82,28
p "A = 82,N = 28"
p (1..N).inject(1){ |s,i| s+A*i }  # тут не розібрався просто знайшов схожу функцію (подивитись як буде виконано 50 задач)
puts
p '--------------'

	puts "86 Дан целочисленный массив. Найти среднее арифметическое его элементов."
print numeric_array86 = Array.new(10) { rand(-100...100) }       # В даному рішенні багато коду подивитись як буде виконано 50 задач
puts
length_numeric_array86 = numeric_array86.length
sum_numeric_array86 = numeric_array86.sum
s = sum_numeric_array86 / length_numeric_array86
print s
puts
p '--------------'

	puts "87 Дан целочисленный массив. Найти все четные элементы."
print numeric_array87 = Array.new(10) { rand(-100...100) }								#.even? выбирает каждый элемент с четным индексом
puts
print numeric_array87.find_all{ |elem| elem.even? }
puts
p '--------------'
	
	puts "88 Дан целочисленный массив. Найти количество четных элементов."
print numeric_array88 = Array.new(10) { rand(-100...100) }									#.even? выбирает каждый элемент с четным индексом
puts
print numeric_array88.select{ |i| i.even? }.size
puts
p '--------------'

	puts "89 Дан целочисленный массив. Найти все нечетные элементы."
print numeric_array89 = Array.new(10) { rand(-100...100) }									#.odd? выбирает каждый элемент с нечетным индексом
puts
print numeric_array87.find_all{ |elem| elem.odd? } 
puts
p '--------------'
	
	puts "90 Дан целочисленный массив. Найти количество нечетных элементов."
print numeric_array90 = Array.new(10) { rand(-100...100) }									#.odd? выбирает каждый элемент с нечетным индексом
puts
print numeric_array90.select{ |i| i.odd? }.size 
puts
p '--------------'

	puts "91 Дан целочисленный массив и число К. Если существует элемент, меньший К, то вывести true; в противном случае вывести false."																							
K91 = 91
print numeric_array91 = Array.new(10) { rand(-100...100) }
puts
print numeric_array91.any? {|x| x < K91 }
puts
p '--------------'

	puts "92 Дан целочисленный массив и число К. Если существует элемент, больший К, то вывести true; в противном случае вывести false."
K92 = 92
print numeric_array92 = Array.new(10) { rand(-100...100) }
puts
print numeric_array92.any? { |x| x > K92 }	
puts																								
p '--------------'
	
	puts "93 Дан целочисленный массив и число К. Если все элементы массива меньше К, то вывести true; в противном случае вывести false."
K93 = 93
print numeric_array93 = Array.new(10) { rand(-100...100) }
puts
print numeric_array93.all? {|x| x < K93 }
puts
p '--------------'	
																									
	puts "94 Дан целочисленный массив и число К. Если все элементы массива больше К, то вывести true; в противном случае вывести false."
K94 = 94
print numeric_array94 = Array.new(10) { rand(-100...100) }
puts
print numeric_array94.all? {|x| x > K94 }
puts
p '--------------'

	puts "95 Дан целочисленный массив и число К. Вывести количество элементов, меньших К."	
print numeric_array95 = [1,22,-3,4,5,-5,57,13,-8,47,74].to_a
puts
k95 = 0
print numeric_array95.count { |x| x < k95 }	
puts
p '--------------'

