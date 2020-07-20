class AppointmentsController < ApplicationController

    def show 
    @app = Appointment.find(params[:id])
    end

    def index 
    raise ActionController::RoutingError.new("This does not exist")
    end

end
