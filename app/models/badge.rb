class Badge < ApplicationRecord

  def self.all
    base_url = 'https://sandbox-api.youracclaim.com/v1/organizations/'
    organiztion_id = '91ebc580-e14b-4483-9456-7bcc8db79e68/'
    url = base_url + organiztion_id + 'badges'
    auth = {:username => "Bw_yergO8Gl-K3A8e-1I2fBQQCnTu6pQcUUP:", :password => ""}

    response = HTTParty.get(url, {:basic_auth => auth})
    response.parsed_response["data"]
  end

end
