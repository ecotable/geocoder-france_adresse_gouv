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

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
