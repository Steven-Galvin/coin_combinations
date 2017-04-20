class Fixnum
  define_method(:change) do
    change = self
    nickels = 5
    dimes = 10
    quarters = 25
    pennies = (change % nickels)

    if change >= 25
      quarter_change = (change - (change % quarters))
      if quarter_change >=25
        until quarters == quarter_change
          quarters += 25
        end
      end

      quarter_remainder = change % quarters



      if quarter_remainder >= 10

        dime_change = (quarter_remainder - (quarter_remainder % dimes))
        if dime_change >= 10
          until dimes == dime_change
            dimes += 10
          end
        end

        dime_remainder = quarter_remainder % dimes

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
    else
      quarters = 0
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
    end

      penny_result = pennies.to_s
      nickel_result = (nickels / 5).to_s
      dime_result = (dimes / 10).to_s
      quarter_result = (quarters / 25).to_s
      quarter_result + " quarters, " + dime_result + " dimes, " + nickel_result + " nickels and " + penny_result + " pennies."
  end
end
