module AucklandTransport
  module GTFS

    # GET Agencies list
    #     /gtfs/agency
    def agencies
      @api_client.get '/gtfs/agency'
    end

    # GET Calendar list
    #     /gtfs/calendar
    def calendar
      @api_client.get '/gtfs/calendar'
    end

    # GET Calendar by service id
    #     /gtfs/calendar/serviceId/:service_id
    def calendar_by_service(service_id)
      @api_client.get "/gtfs/calendar/serviceId/#{service_id}"
    end

    # GET Calendar exception list
    #     /gtfs/calendarDate
    def calendar_exceptions
      @api_client.get '/gtfs/calendarDate'
    end


    # GET Calendar exception by service id
    #     /gtfs/calendarDate/serviceId/:service_id
    # GET Routes list
    #     /gtfs/routes
    # GET Routes list filtered by id
    #     /gtfs/routes/routeId/:route_id
    # GET Routes list filtered by long name
    #     /gtfs/routes/routeLongName/:route_long_name
    # GET Routes list filtered by short name
    #     /gtfs/routes/routeShortName/:route_short_name
    # GET Routes search
    #     /gtfs/routes/search/:search_text
    # GET Routes, search radius around a position (latitude and longitude)
    #     /gtfs/routes/geosearch
    # GET Routes search by stop id
    #     /gtfs/routes/stopid/:stop_id
    # GET Shape by Id
    #     /gtfs/shapes/shapeId/:shape_id
    # GET Shape by trip id
    #     /gtfs/shapes/tripId/:trip_id
    # GET Shape geometry by Id
    #     /gtfs/shapes/geometry/:shape_id
    # GET Stops list
    #     /gtfs/stops
    # GET Stop by Id
    #     /gtfs/stops/stopId/:stop_id
    # GET Stop by code
    #     /gtfs/stops/stopCode/:stop_code
    # GET Stops search by name
    #     /gtfs/stops/search/:search_text
    # GET Stops search by postion
    #     /gtfs/stops/geosearch
    # GET Stops times by stop id
    #     /gtfs/stopTimes/stopId/:stop_id
    # GET Stops times by trip id
    #     /gtfs/stopTimes/tripId/:trip_id
    # GET Trips list
    #     /gtfs/trips
    # GET Trips by trip id
    #     /gtfs/trips/tripId/:trip_id
    # GET Trips by route id
    #     /gtfs/trips/routeid/:route_id
    #
    #
    #
  end
end
