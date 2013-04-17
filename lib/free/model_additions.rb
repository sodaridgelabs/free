module Free
  module ModelAdditions
    def free attribute
      # TODO: Add validations here

    end

    # Query to find records that have overlapping timeslots with timeslots
    def overlapping timeslots
      where("? & timeslots > 0::bit", timeslots)
    end
  end
end