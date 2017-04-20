require('rspec')
require('change')

describe('Fixnum#change') do
  it('will count up to desired change in pennies')do
    expect(4.change).to(eq('0 nickels and 4 pennies.'))
  end

  it('will count up to desired change in nickels and pennies')do
    expect(22.change).to(eq('4 nickels and 2 pennies.'))
  end
end
