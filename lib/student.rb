require_relative "../config/environment.rb"

class Student
  
attr_accessor  :name, :grade, :id
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  
  def initialize(name, grade, id = nil)
    @id = id 
    @name = name 
    @grade = grade
  end
  
  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXIST students (
    id integer primary key,
    name text,
    grade integer
    
    );
    SQL
    
    DB[:conn].execuet(sql)
  end
  
  def self.drop_table
  
  end
  
  def save
  
  end
  
  def self.create
  
  end
    
    def self.new_from_db
      output = self.new(row[0],row[1],row[2])
    end
    
    def self.find_by_name
      
    end
    
    def update
      
    end
    
end
