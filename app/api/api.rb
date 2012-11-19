class API < Grape::API

  format :json
  error_format :json

  version 'v1', :using => :header

  rescue_from Mongoid::Errors::DocumentNotFound do |error|
    rack_response({"error" => {"message" => "We did not find what you were looking for" }})
  end

  #User API
  mount Users::APIV1

  #Conference API

end
