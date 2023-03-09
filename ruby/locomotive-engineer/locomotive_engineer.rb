# frozen_string_literal: true

class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons)
    wagons
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    second_last, last, first, *rest = each_wagons_id
    [first, *missing_wagons, *rest, second_last, last]
  end

  def self.add_missing_stops(stops, **missing_stops)
    missing = { stops: missing_stops.values }
    { **stops, **missing }
  end

  def self.extend_route_information(route, more_route_information)
    { **route, **more_route_information }
  end
end
