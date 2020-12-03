require 'geocoder'
require "geocoder/france_adresse_gouv/version"
require_relative "./lookups/france_adresse_gouv"
require_relative "./results/france_adresse_gouv"

module Geocoder
  module FranceAdresseGouv
    def self.load
      Geocoder::Lookup.street_services.push(:france_adresse_gouv)
    end
  end
end

Geocoder::FranceAdresseGouv.load
