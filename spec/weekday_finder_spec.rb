require('rspec')
require('weekday_finder')

describe('Daychecker#get_day') do
  it("entering invalid date results in error message") do
   expect(Daychecker.new.get_day("50/50/5050")).to(eq("Invalid date"))
  end
  it("1/1/2016 returns 'Friday'") do
    expect(Daychecker.new.get_day("1/1/2016")).to(eq("Friday"))
  end
  it("1/2/2016 returns 'Saturday'") do
    expect(Daychecker.new.get_day("1/2/2016")).to(eq("Saturday"))
  end
  it("1/3/2016 returns 'Sunday'") do
    expect(Daychecker.new.get_day("1/3/2016")).to(eq("Sunday"))
  end
  it("1/4/2016 returns 'Monday'") do
    expect(Daychecker.new.get_day("1/4/2016")).to(eq("Monday"))
  end
  it("1/5/2016 returns 'Tuesday'") do
    expect(Daychecker.new.get_day("1/5/2016")).to(eq("Tuesday"))
  end
  it("1/6/2016 returns 'Wednesday'") do
    expect(Daychecker.new.get_day("1/6/2016")).to(eq("Wednesday"))
  end
  it("1/7/2016 returns 'Thursday'") do
    expect(Daychecker.new.get_day("1/7/2016")).to(eq("Thursday"))
  end
end
