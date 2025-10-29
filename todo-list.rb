require './constants.rb'

puts '=== TODO LIST ==='
puts '1. Добавить задачу'
puts '2. Показать все задачи'
puts '3. Удалить задачу'
puts '4. Выход'
print 'Выберите действие (1-4):'


tasks = File.readlines("data.txt", chomp: true) rescue [] 

loop do
  menu_item = gets.to_i 
  if menu_item == 1
   print 'Введите название задачи: '
   name = gets.strip
   
   if name !='' && name.size < NAME_MAX_SIZE && name.size > NAME_MIN_SIZE
     tasks << name 
     File.write("data.txt", tasks.join("\n"))
     tasks.each_with_index {|task, index| puts "#{index + 1}. #{task}"}
    else
      puts 'Мы не можем добавить в список задач: '
    if name == ''
      puts 'Пустое название.'
    end 
    if name.size >= NAME_MAX_SIZE
      puts "Название превышает или равен #{NAME_MAX_SIZE} символам."
    end 
    if name.size <= NAME_MIN_SIZE
      puts "Название содержит меньше или равен #{NAME_MIN_SIZE} символам."
    end
   end 
 print 'Выберите действие (1-4):'
  elsif menu_item == 2
   tasks.each_with_index {|task, index| puts "#{index + 1}. #{task}"}
  elsif menu_item == 3
    tasks.each_with_index {|task, index| puts "#{index + 1}. #{task}"}
    print 'Введи номер задачи для удаления: '
    task_number = gets.to_i
    tasks.delete_at(task_number - 1)
    File.write("data.txt", tasks.join("\n"))
  elsif menu_item == 4
    puts 'До свидания!'
    break
  else 
    puts 'Неверный выбор. Попробуйте снова.'
  end
end







