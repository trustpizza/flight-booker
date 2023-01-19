class FlightGenerator
  def initialize(day)
    @day = day
  end

  def flight_duration
    {
      LAX: {BOS: , ORD: , JFK: , ATL: , DFW: , DEN: , MCO: , PHX: , MSP: , LGA: },
      BOS: {LAX: , ORD: , JFK: , ATL: , DFW: , DEN: , MCO: , PHX: , MSP: , LGA: },
      ORD: {LAX: , BOS: , JFK: , ATL: , DFW: , DEN: , MCO: , PHX: , MSP: , LGA: },
      JFK: {LAX: , BOS: , ORD: , ATL: , DFW: , DEN: , MCO: , PHX: , MSP: , LGA: },
      ATL: {LAX: , BOS: , ORD: , JFK: , DFW: , DEN: , MCO: , PHX: , MSP: , LGA: },
      DFW: {LAX: , BOS: , ORD: , JFK: , ATL: , DEN: , MCO: , PHX: , MSP: , LGA: },
      DEN: {LAX: , BOS: , ORD: , JFK: , ATL: , DFW: , MCO: , PHX: , MSP: , LGA: },
      MCO: {LAX: , BOS: , ORD: , JFK: , ATL: , DFW: , DEN: , PHX: , MSP: , LGA: },
      PHX: {LAX: , BOS: , ORD: , JFK: , ATL: , DFW: , DEN: , MCO: , MSP: , LGA: },
      MSP: {LAX: , BOS: , ORD: , JFK: , ATL: , DFW: , DEN: , MCO: , PHX: , LGA: },
      LGA: {LAX: , BOS: , ORD: , JFK: , ATL: , DFW: , DEN: , MCO: , PHX: , MSP: }
    }
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