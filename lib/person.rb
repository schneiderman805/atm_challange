require 'account.rb'

class Person
    attr_accessor :name, :cash, :account
     
    def initialize (attrs = {})
    set_owner(attrs[:name])
    set_cash(attrs[:cash])
    create_account()
    end

    def set_owner(obj)
    obj == nil ? missing_name : @name = obj
    end
    def missing_name
        raise 'A name is required'
    end
    def set_cash(cash)
        cash == nil ? @cash = 0 : @cash = cash 
    end
    def create_account()
        @account = Account.new(owner: 'Thomas')
        #account == nil ? set_account : @account = account
    
    end
    
end
