module Geocoder
  module Lookup
    class FranceAdresseGouv < Geocoder::Lookup::Base
      def name
        'FranceAdresseGouv'
      end

      def base_query_url(_query)
        "https://api-adresse.data.gouv.fr/search/?"
      end

      def query_url_params(query)
        query.options.slice(:limit, :lat, :long, :type, :postcode, :citycode).merge(
          {
            q: query.text,
            autocomplete: query.options[:autocomplete] == false ? 0 : 1
          }
        ).compact
      end

      def supported_protocols
        [:https]
      end

      def results(query)
        return [] unless (data = fetch_data(query))

        data['features'] || raise_error(Geocoder::ResponseParseError, data)
      end
    end
  end
end
