class Employee
  attr_reader :salary
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    @salary * multiplier
  end
    
end

class Manager < Employee
  attr_reader :employees
  def initialize(name, title, salary, boss)
    super
    @employees = []
    
  end

  def bonus(multiplier)
    self.total_salary * multiplier
  end

  def add_employee(*employee)
    @employees += employee
  end

  def has_employee?
    !@employees.empty?
  end

  def total_salary
    total = 0
    
    @employees.each do |employee|
      if employee.is_a?(Manager)
        employee.employees.each do |emp|
          total += emp.salary
        end
      end
      total += employee.salary
    end
    total
  end


end

employee_1 = Employee.new("Shawna", "TA", 12000, "Darren")
employee_2 = Employee.new("David", "TA", 10000, "Darren")
manager_1 = Manager.new("Darren", "TA Manager", 78000, "Ned")
manager_2 = Manager.new("Ned", "Founder", 1000000, nil)

manager_1.add_employee(employee_1, employee_2)
manager_2.add_employee(manager_1)
p manager_2.bonus(5)
p manager_1.bonus(4)

