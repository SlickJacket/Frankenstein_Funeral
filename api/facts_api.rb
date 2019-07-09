require 'json'
require 'rest-client'
require 'pry'


class GetFacts

    URL = 'http://randomuselessfact.appspot.com/random.json?language=en'

    def new_fact
        response = RestClient.get(URL)
        the_quotes = JSON.parse(response)
        the_quotes["text"]
    end
end

$fact_generator = GetFacts.new

