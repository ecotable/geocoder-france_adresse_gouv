module Geocoder
  module Result
    class FranceAdresseGouv < Geocoder::Result::Base
      STATE_CODE_MAPPINGS = {
        "Guadeloupe" => "01",
        "Martinique" => "02",
        "Guyane" => "03",
        "La Réunion" => "04",
        "Mayotte" => "06",
        "Île-de-France" => "11",
        "Centre-Val de Loire" => "24",
        "Bourgogne-Franche-Comté" => "27",
        "Normandie" => "28",
        "Hauts-de-France" => "32",
        "Grand Est" => "44",
        "Pays de la Loire" => "52",
        "Bretagne" => "53",
        "Nouvelle-Aquitaine" => "75",
        "Occitanie" => "76",
        "Auvergne-Rhône-Alpes" => "84",
        "Provence-Alpes-Côte d'Azur" => "93",
        "Corse" => "94"
      }.freeze

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

      def department_code
        data['properties']['context'].split(', ')[0]
      end

      def department
        data['properties']['context'].split(', ')[1]
      end

      def state
        data['properties']['context'].split(', ').last
      end

      def state_code
        STATE_CODE_MAPPINGS[state]
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
