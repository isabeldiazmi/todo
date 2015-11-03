class Vista
  def interfaz(lista)
    lista.each do |x|
      n = lista.index(x) + 1
      if x.completed == true
        puts "#{n}. [X] #{x.task}"
      else
        puts "#{n}. [ ] #{x.task}"
      end
    end
  end
end