require "csv"

class Modelo
  def initialize(lista)
    @lista = lista
    @tasks = []
    create_csv
  end

  def read_csv
    CSV.foreach("cosasquehacer.csv") do |row|
      @tasks = Task.new(row[0])
    end
  end

  def create_csv
    CSV.open("cosasquehacer.csv", "wb") do |csv|
      @lista.each do |x| 
        t = Task.new(x)
        @tasks << t
        csv << [t.task, t.completed]
      end
    end
    @tasks
  end

  def add_csv(str)
    tarea = Task.new(str)
    CSV.open("cosasquehacer.csv", "a+") do |csv|
      csv << [tarea.task, tarea.completed]
    end
  end

  # def delete_csv(n)
  #   CSV.open("cosasquehacer.csv")
  # end
end

class Task
  attr_accessor :task, :completed
  def initialize(task, completed = false)
    @task = task
    @completed = completed
  end
end