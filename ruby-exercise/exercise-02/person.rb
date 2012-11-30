
class UnknownAttributeError < ArgumentError
end
class Person
  attr_accessor :name, :hobbies

  def initialize(fields = nil)
  	return unless fields
  	fields.each do |field_name,value|

  	unless self.respond_to?(field_name)
    	raise UnknownAttributeError.new
  	end  
  	
  	self.send(field_name.to_s+"=",value)	
  	end

  end


end
