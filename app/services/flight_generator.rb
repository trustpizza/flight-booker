class FlightGenerator
  def initialize(day)
    @day = day
  end

  def flight_duration
    {
      LAX: {BOS: 330, ORD: 245, JFK: 320, ATL: 250, DFW: 180, DEN: 145, MCO: 280, PHX: 85, MSP: 215, LGA: 418},
      BOS: {LAX: 330, ORD: 240, JFK: 80, ATL: 245, DFW: 58, DEN: 295, MCO: 210, PHX: 370, MSP: 210, LGA: 85},
      ORD: {LAX: 245, BOS: 240, JFK: 135, ATL: 120, DFW: 155, DEN: 170, MCO: 170, PHX: 275, MSP: 90, LGA: 130},
      JFK: {LAX: 320, BOS: 80, ORD: 135, ATL: 160, DFW: 255, DEN: 280, MCO: 185, PHX: 355, MSP: 205, LGA: 31},
      ATL: {LAX: 250, BOS: 245, ORD: 120, JFK: 160, DFW: 145, DEN: 205, MCO: 90, PHX: 260, MSP: 160, LGA: 130},
      DFW: {LAX: 180, BOS: 280, ORD: 155, JFK: 255, ATL: 145, DEN: 125, MCO: 145, PHX: 160, MSP: 140, LGA: 195},
      DEN: {LAX: 145, BOS: 295, ORD: 170, JFK: 280, ATL: 205, DFW: 125, MCO: 215, PHX: 120, MSP: 115, LGA: 220},
      MCO: {LAX: 280, BOS: 210, ORD: 170, JFK: 185, ATL: 90, DFW: 145, DEN: 215, PHX: 290, MSP: 210, LGA: 210},
      PHX: {LAX: 85, BOS: 370, ORD: 275, JFK: 355, ATL: 260, DFW: 160, DEN: 120, MCO: 290, MSP: 185, LGA: 240},
      MSP: {LAX: 215, BOS: 210, ORD: 90, JFK: 205, ATL: 160, DFW: 140, DEN: 115, MCO: 210, PHX: 185, LGA: 165},
      LGA: {LAX: 418, BOS: 85, ORD: 130, JFK: 31, ATL: 130, DFW: 195, DEN: 220, MCO: 185, PHX: 240, MSP: 165}
    }
  end

  def pair_airports
    flight_duration.keys.map(&:to_s).permutations(2)
  end

  def morning
    Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :morning)
  end

  def afternoon
    Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :afternoon)
  end

  def evening
    Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :evening)
  end
end