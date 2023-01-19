class FlightGenerator
  def initialize(day)
    @day = day
  end

  def start 
    pairs = pair_airports
    pairs.each do |pair|
      find_or_create_flights(pair)
    end
  end

  private

  def find_or_create_flights(pair)
    origin = Airport.find_by(code: pair[0])
    destination = Airport.find_by(code: pair[1])
    flights = Flight.where(origin_airport: origin, destination_airport: destination, departure_date: @day)
    return if flights.count.positive?

    duration = find_duration(pair)
    create_flights(origin, destination, duration)
  end

  def create_flights(origin, destination, duration)
    departure_times = [morning, afternoon, evening]
    departure_times.each do |time|
      Flight.create(origin_airport: origin,
                    destination_airport: destination,
                    departure_date: @day,
                    departure_time: time,
                    duration: duration
      )
    end
  end

  def flight_duration
    {
      SFO: { NYC: 308, ATL: 257, ORD: 224, LAX: 53, DFW: 181, MCO: 292, DEN: 125 },
      NYC: { SFO: 308, ATL: 101, ORD: 99, LAX: 296, DFW: 173, MCO: 122, DEN: 199 },
      ATL: { SFO: 257, NYC: 101, ORD: 84, LAX: 236, DFW: 98, MCO: 61, DEN: 151 },
      ORD: { SFO: 224, NYC: 99, ATL: 84, LAX: 213, DFW: 106, MCO: 129, DEN: 116 },
      LAX: { SFO: 53, NYC: 296, ATL: 236, ORD: 213, DFW: 155, MCO: 266, DEN: 113 },
      DFW: { SFO: 181, NYC: 173, ATL: 98, ORD: 106, LAX: 155, MCO: 127, DEN: 88 },
      MCO: { SFO: 292, NYC: 122, ATL: 61, ORD: 129, LAX: 266, DFW: 127, DEN: 190 },
      DEN: { SFO: 125, NYC: 199, ATL: 151, ORD: 116, LAX: 113, DFW: 88, MCO: 190 }
    }
  end

  def find_duration(airports)
    flight_duration[airports[0].to_sym][airports[1].to_sym]
  end

  def pair_airports
    flight_duration.keys.map(&:to_s).permutation(2)
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