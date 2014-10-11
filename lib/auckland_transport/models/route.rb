module AucklandTransport
  # Route model
  class Route
    PROPERTIES = [:id, :agency, :short_name, :long_name, :description,
                  :type, :url, :colour, :text_colour]

    PROPERTIES.each do |prop|
      attr_reader prop
    end

    def initialize(options = {})
      PROPERTIES.each do |attr|
        instance_variable_set("@#{attr}", options[attr])
      end
    end

    # rubocop:disable MethodLength
    def self.from_json(attrs)
      new(
        id: attrs['route_id'],
        agency: attrs['agency_id'],
        short_name: attrs['route_short_name'],
        long_name: attrs['route_long_name'],
        description: attrs['route_desc'],
        type: attrs['route_type'],
        url: attrs['route_url'],
        colour: attrs['route_color'],
        text_colour: attrs['route_text_color']
      )
    end
    # rubocop:enable MethodLength
  end
end
