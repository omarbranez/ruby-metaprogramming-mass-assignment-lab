class Person
  #your code here
    def initialize(attributes)
      attributes.each do |key, value| #iterate on the incoming attributes, mass assign as a hash (thus the key and value) 
        self.class.attr_accessor(key) #for that instance, create new attr_accessors for each key. attr_accessor is a class method
        self.send(("#{key}="), value) #for as many keys(attributes) exist, _SEND_ will initialize a new instance while linking them to the value
      end
    end
end