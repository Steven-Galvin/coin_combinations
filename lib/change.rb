class Fixnum
  define_method(:change) do
      # pennies = 1
      nickels = 5
      dimes = 10

      change = self

      pennies = (change % nickels)

      if change >= 10

        dime_change = (change - (change % dimes))
        if dime_change >= 10
          until dimes == dime_change
            dimes += 10
          end
        end

        dime_remainder = change % dimes

        nickel_change = (dime_remainder - (dime_remainder % nickels))
        if nickel_change >=5
          until nickels == nickel_change
            nickels += 5
          end
        else
          nickels = 0
        end
      else
        dimes = 0
        nickel_change = (change - (change % nickels))
        if nickel_change >=5
          until nickels == nickel_change
            nickels += 5
          end
        else
          nickels = 0
        end
      end


      #
      #
      # until pennies == self
      #   pennies += 1
      # end

      # (nickels / 5).to_s + ' nickels'
      penny_result = pennies.to_s
      nickel_result = (nickels / 5).to_s
      dime_result = (dimes / 10).to_s
      dime_result + " dimes, " + nickel_result + " nickels and " + penny_result + " pennies."
  end
end
