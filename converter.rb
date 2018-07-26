require 'iso_country_codes'
# Finding an ISO code returns the country name and other code formats
puts code = IsoCountryCodes.find('gb')
puts code.name      # => "United Kingdom of Great Britain and Northern Ireland"
puts code.numeric   # => "826"
puts code.alpha2    # => "GB"
puts code.alpha3    # => "GBR"
puts code.calling   # => "+44"
puts code.continent # => "EU"
puts code.iban      # => "GB"

puts 

# Codes can be found via numeric, alpha-2 or alpha-3 format
puts IsoCountryCodes.find(36)
puts IsoCountryCodes.find('au')
puts IsoCountryCodes.find('aus')

puts 

# Codes can also be returned by searching country name, currency, calling/dialing code or IBAN
puts IsoCountryCodes.search_by_name('australia')
puts IsoCountryCodes.search_by_currency('aud')
puts IsoCountryCodes.search_by_calling_code('+61')
puts IsoCountryCodes.search_by_iban('gb')

puts 

# Fetch a country's local currency
puts IsoCountryCodes.find('aus').currency # => "AUD"

puts 
# Output an Array of countries and their codes for use form helper methods
puts IsoCountryCodes.for_select # => Array

require 'no_nonsense_currency_converter'
NoNonsenseCurrencyConverter.get_converted_currency_value('USD', 'GBP', 10)