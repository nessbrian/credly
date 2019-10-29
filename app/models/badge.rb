class Badge < ApplicationRecord
  # TODO: protect this by moving it to an ENV variable.
  @@auth = {:username => "Bw_yergO8Gl-K3A8e-1I2fBQQCnTu6pQcUUP:", :password => ""}

  base_url = 'https://sandbox-api.youracclaim.com/v1/organizations/'
  organiztion_id = '91ebc580-e14b-4483-9456-7bcc8db79e68/'
  @@url = base_url + organiztion_id + 'badges'

  def self.all
    response = HTTParty.get(@@url, :basic_auth => @@auth)
    response.parsed_response["data"]
  end

  def self.new(badge_params)
    data = {
      "recipient_email": badge_params['recipient_email'],
      "badge_template_id": badge_params['badge_template_id'],
      "issued_at": Time.now,
      "issued_to_first_name": badge_params['issued_to_first_name'],
      "issued_to_last_name": badge_params['issued_to_last_name']
    }
    response = HTTParty.post(@@url, :body => data, :basic_auth => @@auth)
    #response.parsed_response["data"]
  end
end

