class Fixnum
  define_method(:change) do
    change = self
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0
    # coins = [quarters, dimes, nickels, pennies]
    # final_array = []

    until change == 0
      if change >= 25
        quarters = change/25
        change = change % 25
      elsif change >= 10
        dimes = change/10
        change = change % 10
      elsif change >= 5
        nickels = change/5
        change = change % 5
      else
        pennies = change
        change = 0
      end
    end

    # coins.each() do |coin|
    #   if coin != 0
    #     final_array.push(coin.to_s)
    #   end
    # end
    # final_array.join


    "Your change is #{quarters} quarters, #{dimes} dimes, #{nickels} nickels and #{pennies} pennies."

  end
end
