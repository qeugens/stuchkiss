class Api::V1::Users::SessionsController < Devise::SessionsController
  respond_to :json
end