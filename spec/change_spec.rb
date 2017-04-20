require('rspec')
require('change')

describe('Fixnum#change') do
  it('will count up to desired change in pennies')do
    expect(90.change).to(eq('90 pennies'))
  end

  # it('will count up to desired change in nickels')do
  #   expect(90.change).to(eq('18 nickels'))
  # end
  #
  # it('will count up to desired change in nickels')do
  #   expect(90.change).to(eq('18 nickels'))
  # end
end
