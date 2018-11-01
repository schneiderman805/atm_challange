require 'account.rb'

class Person
    attr_accessor :name, :cash, :account
     
    def initialize (attrs = {})
    set_owner(attrs[:name])
    set_cash(attrs[:cash])
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
        @account = Account.new(owner: self)
    end

    def deposit(deposit)
        @account ? deposit_money(deposit) : raise_error 
    end

    def deposit_money(deposit)

        @cash -= deposit
        @account.balance += deposit

    end

    def raise_error
        raise 'No account present'
    end 

    def withdraw(attrs = {})
        atm_status = attrs[:atm]
        atm_status ? true : withdraw_raise_error
    end
    def withdraw_raise_error
        raise 'An ATM is required'
    end
end

