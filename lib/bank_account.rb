class BankAccount
    attr_accessor  :balance, :status
    attr_reader :name
    def initialize(name)
    
        @name=name
        @balance = 1000
        @status = "open"
    end

    def deposit(money)
        @balance+= money  
    end

    def display_balance
        "Your balance is $#{@balance}."
    end

    def close_account
        @status = "closed"
    end

    def valid?
        if @balance >0 && @status =="open"
            return true
        else
            return false
        end
    end

end
