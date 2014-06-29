module AucklandTransport
  # Google Transport Feed Service endpoints
  module GTFS
    # GET Agencies list
    #     /gtfs/agency
    def agencies
      get '/gtfs/agency'
    end

    # GET Calendar list
    #     /gtfs/calendar
    def calendar
      get '/gtfs/calendar'
    end

    # GET Calendar by service id
    #     /gtfs/calendar/serviceId/:service_id
    def calendar_by_service(service_id)
      get "/gtfs/calendar/serviceId/#{service_id}"
    end

    # GET Calendar exception list
    #     /gtfs/calendarDate
    def calendar_exceptions
      get '/gtfs/calendarDate'
    end

    # GET Calendar exception by service id
    #     /gtfs/calendarDate/serviceId/:service_id
    def calendar_service_exceptions(service_id)
      get "/gtfs/calendarDate/serviceId/#{service_id}"
    end

    # GET Routes list
    #     /gtfs/routes
    def routes
      routes = get('/gtfs/routes')
      routes.map do |route|
        Route.from_json(route)
      end
    end

    # GET Routes list filtered by id
    #     /gtfs/routes/routeId/:route_id
    def route_by_id(route_id)
      get "/gtfs/routes/#{route_id}"
    end

    # GET Routes list filtered by long name
    #     /gtfs/routes/routeLongName/:route_long_name
    def route_by_long_name(route_long_name)
      get "/gtfs/routes/routeLongName/#{route_long_name}"
    end

    # GET Routes list filtered by short name
    #     /gtfs/routes/routeShortName/:route_short_name
    def route_by_short_name(route_short_name)
      get "/gtfs/routes/routeShortName/#{route_short_name}"
    end

    # GET Routes search
    #     /gtfs/routes/search/:search_text
    def route_search(search_text)
      get "/gtfs/routes/search/#{search_text}"
    end

    # GET Routes, search radius around a position (latitude and longitude)
    #     /gtfs/routes/geosearch
    def route_geosearch
      get '/gtfs/routes/geosearch/'
    end

    # GET Routes search by stop id
    #     /gtfs/routes/stopid/:stop_id
    def route_by_stop_id(stop_id)
      get "/gtfs/routes/stopid/#{stop_id}"
    end

    # GET Shape by Id
    #     /gtfs/shapes/shapeId/:shape_id
    def route_by_shape_id(shape_id)
      get "/gtfs/shapes/shapeId/#{shape_id}"
    end

    # GET Shape by trip id
    #     /gtfs/shapes/tripId/:trip_id
    def route_shape_by_trip_id(trip_id)
      get "/gtfs/shapes/tripId/#{trip_id}"
    end

    # GET Shape geometry by Id
    #     /gtfs/shapes/geometry/:shape_id
    def route_shape_by_geometry_id(shape_id)
      get "/gtfs/shapes/geometry/#{shape_id}"
    end

    # GET Stops list
    #     /gtfs/stops
    def stops
      get '/gtfs/stops'
    end

    # GET Stop by Id
    #     /gtfs/stops/stopId/:stop_id
    def stops_by_stop_id(stop_id)
      get "/gtfs/stops/stopId/#{stop_id}"
    end

    # GET Stop by code
    #     /gtfs/stops/stopCode/:stop_code
    def stops_by_stop_code(stop_code)
      get "/gtfs/stops/stopCode/#{stop_code}"
    end

    # GET Stops search by name
    #     /gtfs/stops/search/:search_text
    def stops_by_name(name)
      get "/gtfs/stops/search/#{name}"
    end

    # GET Stops search by postion
    #     /gtfs/stops/geosearch
    def stops_by_position
      get '/gtfs/stops/geosearch/'
    end

    # GET Stops times by stop id
    #     /gtfs/stoptimes/stopid/:stop_id
    def stop_times_by_stop_id(stop_id)
      get "/gtfs/stoptimes/stopid/#{stop_id}"
    end

    # GET Stops times by trip id
    #     /gtfs/stopTimes/tripId/:trip_id
    def stop_times_by_trip_id(trip_id)
      get "/gtfs/stopTimes/tripId/#{trip_id}"
    end

    # GET Trips list
    #     /gtfs/trips
    def trips
      get '/gtfs/trips'
    end

    # GET Trips by trip id
    #     /gtfs/trips/tripId/:trip_id
    def trips_by_trip_id(trip_id)
      get "/gtfs/trips/tripId/#{trip_id}"
    end

    # GET Trips by route id
    #     /gtfs/trips/routeid/:route_id
    #
    def trips_by_route_id(route_id)
      get "/gtfs/trips/routeid/#{route_id}"
    end
  end
end
