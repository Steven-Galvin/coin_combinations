class Fixnum
  define_method(:change) do
      # pennies = 1
      nickels = 5

      change = self

      pennies = (change % nickels)

     nickel_change = (change - (change % nickels))
      if nickel_change >=5
        until nickels == nickel_change
          nickels += 5
        end
      else
        nickels = 0
      end

      #
      #
      # until pennies == self
      #   pennies += 1
      # end

      # (nickels / 5).to_s + ' nickels'
      penny_result = pennies.to_s
      nickel_result = (nickels / 5).to_s
      nickel_result + " nickels and " + penny_result + " pennies."
  end
end
