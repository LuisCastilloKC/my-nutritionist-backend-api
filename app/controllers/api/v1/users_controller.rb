class Api::V1::UsersController < ApplicationController

    def create
        user = User.create(user_params)
        if user.save
            token = issue_token(user)
            render json: {user: UserSerializer.new(user), jwt: token}
        else
            if user.errors.messages
                render json: {error: user.errors.messages}
            else
                render json: {error: "User could not be created. Please try again."}
            end
        end
    end

    private

    def user_params
        params.require(:user).permit(:firstname, :lastname, :email, :password)
    end
end
