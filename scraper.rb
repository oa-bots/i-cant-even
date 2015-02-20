# -*- coding: utf-8 -*-

require 'json'
require 'turbotlib'

Turbotlib.log("Starting run...") # optional debug logging

(1...30).each do |n|
  data = {
    "saon" => "",
    "paon" => n.to_s,
    "street" => "Southlands Drive",
    "locality" => "Timsbury",
    "town" => "Bath",
    "postcode" => "BA2 0HB",
    "provenance"=> {
      "activity"=> {
        "executed_at"=>"2015-01-30T17:57:51+00:00",
        "processing_scripts"=>"https://github.com/OpenAddressesUK/sorting_office",
        "derived_from" => [
          {
            "type"=>"userInput",
            "input"=>"10 Downing Street, London, SW1A 2AA",
            "inputted_at"=>"2015-01-30T17:57:51+00:00",
            "processing_script"=> "https://github.com/OpenAddressesUK/sorting_office/tree/0fff78c71a170e2264faef7962e19f99a645c1d0/lib/sorting_office/address.rb"
          },
          {
            "type"=>"Source",
            "urls"=>["http://alpha.openaddressesuk.org/postcodes/Uxm2vc"],
            "downloaded_at"=>"2015-01-30T17:57:51+00:00",
            "processing_script"=>"https://github.com/OpenAddressesUK/sorting_office/tree/0fff78c71a170e2264faef7962e19f99a645c1d0/lib/models/postcode.rb"
          },
          {
            "type"=>"Source",
            "urls"=>["http://alpha.openaddressesuk.org/towns/qyHZe2"],
            "downloaded_at"=>"2015-01-30T17:57:51+00:00",
            "processing_script"=>"https://github.com/OpenAddressesUK/sorting_office/tree/0fff78c71a170e2264faef7962e19f99a645c1d0/lib/models/town.rb"
          },
          {
            "type"=>"Source",
            "urls"=>["http://alpha.openaddressesuk.org/streets/Gq5142"],
            "downloaded_at"=>"2015-01-30T17:57:51+00:00",
            "processing_script"=>"https://github.com/OpenAddressesUK/sorting_office/tree/0fff78c71a170e2264faef7962e19f99a645c1d0/lib/models/street.rb"
          }
        ]
      }
    }
  }
  # The Turbot specification simply requires us to output lines of JSON
  puts JSON.dump(data)
end
