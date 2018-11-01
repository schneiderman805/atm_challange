require './lib/account.rb'

class Person
    attr_accessor :name, :cash, :account
     
    def initialize (attrs = {})
    set_owner(attrs[:name])
    set_cash(attrs[:cash])
    end

    def set_owner(obj)
    obj == nil ? raise_error('owner') : @name = obj
    end

    def set_cash(cash)
        @cash = cash || 0
    end

    def create_account()
        @account = Account.new(owner: self)
    end

    def deposit(deposit)
        @account ? change_account_and_cash_balance('deposit',deposit) : raise_error('account') 
    end

    def withdraw(attrs = {})
        attrs[:atm] ?  atm = attrs[:atm] : raise_error('ATM')
        atm_withdrawal = attrs[:amount]
        pin = attrs[:pin]
        response = atm.withdraw(atm_withdrawal,pin,@account)
        response[:status] ? change_account_and_cash_balance('withdrawal',atm_withdrawal) : response
    end

    def change_account_and_cash_balance(cash_movement,amount)
        case cash_movement
        when 'deposit'
            @cash -= amount
            @account.balance += amount
        when 'withdrawal'
            @cash += amount
        else
            false
        end
    end

    def raise_error(source)
        case source
        when 'owner'
            raise 'A name is required'
        when 'account'
            raise 'No account present'
        when 'ATM'
            raise 'An ATM is required'
        else
            false
        end
    end
end

