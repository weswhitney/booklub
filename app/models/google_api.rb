class GoogleApi
  
  def initialize
    @conn = Faraday.new(:url => 'https://www.googleapis.com/siteVerification/v1/webResource?parameters')
  end

end
