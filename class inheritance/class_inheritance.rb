#employee's name, title, salary, and boss.

class Employee

  attr_reader :salary
  def initialize(name, salary, boss, title)
    @name = name
    @salary = salary
    @boss = boss
    @title = title

  end

  def bonus(multiplier)
    
      @salary * multiplier
    
  end


end

class Manager < Employee

  attr_accessor :assigned_employees
  def initialize(name, salary, boss, title = 'Manager')
    # @name = name
    # @title = title
    # @salary = salary
    # @boss = boss
    super
    @assigned_employees = []

  end


  def bonus(multiplier)
    
    employee_salary * multiplier
  
  end


  def employee_salary

    count = 0
    @assigned_employees.each do |ele|
      count += ele.salary
    end
    count

  end
  

end