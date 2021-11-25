# frozen_string_literal: true

module SavingsAccount
  def self.interest_rate(balance)
    if balance.negative? then -3.213
    elsif balance < 1000 then 0.5
    elsif balance < 5000 then 1.621
    else 2.475
    end
  end

  def self.annual_balance_update(balance)
    balance + interest(balance)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    balance = current_balance
    while balance < desired_balance
      balance += interest(balance)
      years += 1
    end

    years
  end

  def self.interest(balance)
    rate = interest_rate(balance) / 100
    balance.abs * rate
  end
end
