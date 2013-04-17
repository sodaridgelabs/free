module Free
  module ModelAdditions
    def free attribute
      # TODO: Add validations here

    end

    # Query to find records that have overlapping timeslots with timeslots
    def self.overlapping obj
      where("? & timeslots > 0::bit", obj.timeslots)
    end
  end
end