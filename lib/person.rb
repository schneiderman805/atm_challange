class Person
    attr_accessor :name 
   def initilize (attrs = {})
    set_owner(attrs[:name])

   end
   def set_owner(obj)
    obj = nil ? '' : @name = obj
   end
end
