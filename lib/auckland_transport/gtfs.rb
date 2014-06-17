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
    def calendar_service_exceptions(service_id)
      @api_client.get "/gtfs/calendarDate/serviceId/#{service_id}"
    end

    # GET Routes list
    #     /gtfs/routes
    def routes
      @api_client.get '/gtfs/routes'
    end

    # GET Routes list filtered by id
    #     /gtfs/routes/routeId/:route_id
    def route_by_id(route_id)
      @api_client.get "/gtfs/routes/#{route_id}"
    end

    # GET Routes list filtered by long name
    #     /gtfs/routes/routeLongName/:route_long_name
    def route_by_long_name(route_long_name)
      @api_client.get "/gtfs/routes/routeLongName/#{route_long_name}"
    end

    # GET Routes list filtered by short name
    #     /gtfs/routes/routeShortName/:route_short_name
    def route_by_short_name(route_short_name)
      @api_client.get "/gtfs/routes/routeShortName/#{route_short_name}"
    end

    # GET Routes search
    #     /gtfs/routes/search/:search_text
    def route_search(search_text)
      @api_client.get "/gtfs/routes/search/#{search_text}"
    end

    # GET Routes, search radius around a position (latitude and longitude)
    #     /gtfs/routes/geosearch
    def route_geosearch
      @api_client.get "/gtfs/routes/geosearch/"
    end

    # GET Routes search by stop id
    #     /gtfs/routes/stopid/:stop_id
    def route_by_stop_id(stop_id)
      @api_client.get "/gtfs/routes/stopid/#{stop_id}"
    end

    # GET Shape by Id
    #     /gtfs/shapes/shapeId/:shape_id
    def route_by_shape_id(shape_id)
      @api_client.get "/gtfs/shapes/shapeId/#{shape_id}"
    end

    # GET Shape by trip id
    #     /gtfs/shapes/tripId/:trip_id
    def route_shape_by_trip_id(trip_id)
      @api_client.get "/gtfs/shapes/tripId/#{trip_id}"
    end

    # GET Shape geometry by Id
    #     /gtfs/shapes/geometry/:shape_id
    def route_shape_by_geometry_id(shape_id)
      @api_client.get "/gtfs/shapes/geometry/#{shape_id}"
    end

    # GET Stops list
    #     /gtfs/stops
    def stops
      @api_client.get "/gtfs/stops"
    end

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
  end
end
