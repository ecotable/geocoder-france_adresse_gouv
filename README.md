# Geocoder::FranceAdresseGouv

This gem integrates with [`geocoder`](https://github.com/alexreisner/geocoder) and adds the French Adresse API as a backend : https://geo.api.gouv.fr/adresse


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'geocoder-france_adresse_gouv', github: 'ecotable/geocoder-france_adresse_gouv'
```

And then execute:

    $ bundle

## Usage

```ruby
Geocoder.configure(lookup: :france_adresse_gouv)

result = Geocoder.search("35 rue des Grands-Champs Paris").first
result.address # "35 Rue des Grands Champs 75020 Paris"
result.coordinates # [48.851053, 2.402358]
```

### Accepted options

All options advertised in the [adresse API website](https://geo.api.gouv.fr/adresse) should work, namely : 

- use `limit` to limit the number of results returned by the API
- use `autocomplete: false` to disable autocomplete-specific processing
- use `lat` and `long` to give a geographical priority to the search
- use `type` ton only search for a specific type (housenumber / street / locality / municipality)
- use `postcode` or `citycode` to restrict search to a specific postcode / citycode

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
