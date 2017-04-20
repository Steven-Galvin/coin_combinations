class Fixnum
  define_method(:change) do
    change = self
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0

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

    quarters.to_s + " quarters, " + dimes.to_s + " dimes, "+ nickels.to_s + " nickels and " + pennies.to_s + " pennies."

  end
end
