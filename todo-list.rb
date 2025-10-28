print "Введите название задачи: "
name = gets.strip
tasks = ['some task']
NAME_NAX_SIZE = 10
NAME_MIN_SIZE = 3

if name !='' && name.size < NAME_NAX_SIZE && name.size > NAME_MIN_SIZE
    tasks << name 
    tasks.each {|task| puts task}
else
    puts "Мы не можем добавить в список задач: "
    if name == ''
      puts "Пустое название"
    end 
    if name.size > NAME_NAX_SIZE
      puts "Превышает количество #{NAME_NAX_SIZE} символов"
    end 
    if name.size < NAME_MIN_SIZE
      puts "Название содержит меньше #{NAME_MIN_SIZE} символов"
    end
end 


