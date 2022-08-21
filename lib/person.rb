require 'pry'
class Person
  # your code here
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor key
      self.send("#{key}=", value)
    end
  end
end

james_attributes = { name: "james", hair_color: "Black" }

james = Person.new(james_attributes)
james.name       
james.hair_color

stella_attributes = { name: "stella", height: "6'1\"", eye_color: "blue" }

stella = Person.new(stella_attributes)
stella.name      
stella.height    
stella.eye_color