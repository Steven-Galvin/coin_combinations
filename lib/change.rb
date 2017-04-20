class Fixnum
  define_method(:change) do
      pennies = 1
      nickels = 5

    #  self - (self % nickels)
        # until nickels == self
        #   nickels += 5
        # end



      until pennies == self
        pennies += 1
      end

      # (nickels / 5).to_s + ' nickels'
      pennies.to_s + ' pennies'
  end
end
