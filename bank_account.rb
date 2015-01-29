class BankAccount
  
  attr_reader :transactions
  include Enumerable
  
  
  def <=>(other_account)
    self.balance <=> other_account.balance
  end
  
  
  def initialize(name)
     @name = name
	 @balance = 0
	 @transactions = []
  end
  
  
  def deposit(amount)
    @transactions.push(amount)
  end
  
  def withdraw(amount)
    @transactions.push(-amount)
  end	
  
  def balance
    @transactions.inject(0) { |sum, iterator| sum += iterator }
  end
  
  def each
    @transactions.each{|transaction| yield transaction}
  end
  
  def to_s
    "<#{self.class}:name: #{@name}, balance: #{balance}>"
  end
end

account1 = BankAccount.new("Marko Markovic")
account1.deposit(100)
account1.withdraw(50)
account1.deposit(500)
account1.withdraw(21)

account1.each do |transaction|
  puts transaction
 end
 
 account2 = BankAccount.new("Petar Peric")
 account2.deposit(200)
 
 accounts = []
 accounts.push(account1)
 accounts.push(account2)
 
 puts accounts.sort






