require 'observer'

class BankAccount
  include Observable
 
  def initialize(name)
    @name = name
	@transactions = []
	end
	
	def deposit(amount)
	  changed
	  notify_observers(Time.now, 'deposit', amount)
	  @transactions.push(amount)
	end

   def withdraw(amount)
    changed
	notify_observers(Time.now, 'withdrawal', amount)
    @transactions.push(-amount)
   end	
end

class AccountObserver
  def initialize(account)
    @account = account
	@account.add_observer(self)
  end
  
  def update(time, kind, amount)
    puts "[#{time} (#{kind})]: #{amount}"
  end
end

account = BankAccount.new("Jason")

AccountObserver.new(account)

account.deposit(100)
account.withdraw(50)
account.withdraw(25)








