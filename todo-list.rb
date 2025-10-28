require './constants.rb'

print 'Введите название задачи: '
name = gets.strip
tasks = File.readlines("data.txt", chomp: true) 


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


