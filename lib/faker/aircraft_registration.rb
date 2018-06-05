module Faker
  class AircraftRegistration < Base
    class << self
      def number(country = 'usa')
        # Each country has it's own format for bank accounts
        # Many of them use letters in certain parts of the account
        # Using regex patterns we can create virtually any type of bank account
        begin
          pattern = fetch("aircraft_registration.#{country.downcase.tr(' ', '_')}")
        rescue I18n::MissingTranslationData
          raise ArgumentError, "Could not find aircraft registration details for #{country}"
        end

        # Use Faker::Base.regexify for creating a sample from bank account format regex
        Base.regexify(/#{pattern}/)
      end
    end
  end
end
