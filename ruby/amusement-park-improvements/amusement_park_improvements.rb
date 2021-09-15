# frozen_string_literal: true

class Attendee
  def initialize(height)
    @height = height
    @pass_id = nil
  end

  attr_reader :height, :pass_id

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  # rubocop:disable Naming/PredicateName
  def has_pass?
    @pass_id != nil
  end
  # rubocop:enable Naming/PredicateName

  def fits_ride?(ride_minimum_height)
    @height >= ride_minimum_height
  end

  def allowed_to_ride?(ride_minimum_height)
    fits_ride?(ride_minimum_height) && has_pass?
  end
end
