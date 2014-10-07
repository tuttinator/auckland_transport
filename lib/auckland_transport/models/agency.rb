module AucklandTransport
  # Agency model
  class Agency

    PROPERTIES = [:id, :name, :url, :timezone, :lang, :phone, :fare_url]

    PROPERTIES.each do |prop|
      attr_reader prop
    end

    def initialize(options = {})
      PROPERTIES.each do |attr|
        instance_variable_set("@#{attr}", options[attr])
      end
    end

    def self.from_json(attrs)
      mappings =PROPERTIES.inject({}) do |hash, prop|
        hash.merge("agency_#{prop}".to_sym => prop)
      end
      new(attrs.inject({}) do |hash, (key, value)|
        hash.merge(mappings[key.to_sym] => value)
      end)
    end

  end
end
