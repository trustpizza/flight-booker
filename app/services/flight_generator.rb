class FlightGenerator
  def initialize(day)
    @day = day
  end

  def flight_duration
    {
      LAX: {BOS: 330, ORD: 245, JFK: 320, ATL: 250, DFW: 180, DEN: 145, MCO: 280, PHX: 85, MSP: 215, LGA: 418},
      BOS: {LAX: 330, ORD: , JFK: , ATL: , DFW: , DEN: , MCO: , PHX: , MSP: , LGA: },
      ORD: {LAX: 245, BOS: , JFK: , ATL: , DFW: , DEN: , MCO: , PHX: , MSP: , LGA: },
      JFK: {LAX: 320, BOS: , ORD: , ATL: , DFW: , DEN: , MCO: , PHX: , MSP: , LGA: },
      ATL: {LAX: 250, BOS: , ORD: , JFK: , DFW: , DEN: , MCO: , PHX: , MSP: , LGA: },
      DFW: {LAX: 180, BOS: , ORD: , JFK: , ATL: , DEN: , MCO: , PHX: , MSP: , LGA: },
      DEN: {LAX: 145, BOS: , ORD: , JFK: , ATL: , DFW: , MCO: , PHX: , MSP: , LGA: },
      MCO: {LAX: 280, BOS: , ORD: , JFK: , ATL: , DFW: , DEN: , PHX: , MSP: , LGA: },
      PHX: {LAX: 85, BOS: , ORD: , JFK: , ATL: , DFW: , DEN: , MCO: , MSP: , LGA: },
      MSP: {LAX: 215, BOS: , ORD: , JFK: , ATL: , DFW: , DEN: , MCO: , PHX: , LGA: },
      LGA: {LAX: 418, BOS: , ORD: , JFK: , ATL: , DFW: , DEN: , MCO: , PHX: , MSP: }
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