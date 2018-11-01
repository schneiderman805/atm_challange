class Person
    attr_accessor :name
     
    def initialize (attrs = {})
    set_owner(attrs[:name])
    end

    def set_owner(obj)
    obj == nil ? missing_name : @name = obj
    end
    def missing_name
        raise 'A name is required'
    end
end
