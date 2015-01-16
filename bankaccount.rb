class BankAccount

  def initialize(name)
    @transactions = []
    @balance = 0
  end

  def deposit
    print "How much would you like to deposit?"
    amount = gets.chomp
    @balance += amount.to_f
    puts "$#{amount} deposited into your account."
  end

  def show_balance
    puts "Your balance is #{@balance}"
  end

end
