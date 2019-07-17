require('rspec')
require('rps_logic')
require('pry')

describe('#RockPaperScissors') do
  it("returns true if shiv is the object and scissors is the argument") do
    rps = ShivKatanaCrowbar.new()
    expect(rps.game("shiv")).to(eq("shiv"))
  end

  it("returns true if shiv is the object and scissors is the argument") do
    rps = ShivKatanaCrowbar.new()
    expect(rps.game("shiv")).to(eq("shiv"))
  end

  it("returns 'You won this round' if player1 wins") do
    rps = ShivKatanaCrowbar.new()
    expect(rps.game(@humanScore==5)).to(eq(true))
  end
end
