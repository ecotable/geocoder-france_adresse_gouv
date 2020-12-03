module Geocoder
  module Result
    class FranceAdresseGouv < Geocoder::Result::Base
      def address
        data['properties']['label']
      end

      def coordinates
        data['geometry']['coordinates'].reverse
      end

      def postal_code
        data['properties']['postcode']
      end

      def city
        data['properties']['city']
      end

      def state_code
        data['properties']['context'].split(', ')[0]
      end

      def state
        data['properties']['context'].split(', ')[1]
      end

      def country
        "France"
      end

      def country_code
        "FR"
      end

    end
  end
end
