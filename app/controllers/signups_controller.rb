class SignupsController < ApplicationController

    def create
        signup = Signup.create(signup_params)
        if signup.valid?
            render json: signup
        else
            render json: {error: "validation errors"}, status: :unprocessable_entity
    end

    private

    def signup_params
        params.permit(:camper_id, :activity_id, :time)
    end
end
