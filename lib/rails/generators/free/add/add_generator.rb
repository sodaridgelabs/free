module Free
  module Generators
    class AddGenerator < Rails::Generators::NamedBase
      source_root File.expand_path("../templates", __FILE__)

      generate("migration", "add_timeslots_to_#{file_name} timeslots:'BIT VARYING'")
    end
  end
end