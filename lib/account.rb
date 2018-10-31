

class Account
    attr_accessor :pin_code, :balance,  :account_status, :exp_date 
    
    def initialize ()
    @pin_code = rand(1000..9999)
    @balance = 100
    @account_status = :active
    @exp_date = '12/21'
    end
    
end