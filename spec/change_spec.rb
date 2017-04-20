require('rspec')
require('change')

describe('Fixnum#change') do
  it('will count up to desired change in pennies')do
    expect(4.change).to(eq('0 dimes, 0 nickels and 4 pennies.'))
  end

  it('will count up to desired change in nickels and pennies')do
    expect(7.change).to(eq('0 dimes, 1 nickels and 2 pennies.'))
  end

  it('will count up to desired change in dimes, nickels and pennies')do
    expect(27.change).to(eq('2 dimes, 1 nickels and 2 pennies.'))
  end
end
