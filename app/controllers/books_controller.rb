class BooksController < ApplicationController

  def search
    # GoogleApi.search_for_book(params[:term])
    require 'google/api_client'
    require 'google/api_client/auth/installed_app'

    # Establish connection with client
    client = Google::APIClient.new(
      :application_name => 'API project',
      :application_version => '1.0.0'
    )

    # Establish that we are interested in BOOKS specifically
    books = client.discovered_api('books', 'v1')

    # Our key to prove we belong aka Authorization
    key = Google::APIClient::KeyUtils.load_from_pkcs12('API Project-855037e4849e.p12', 'notasecret')
    client.authorization = Signet::OAuth2::Client.new(
      :token_credential_uri => 'https://accounts.google.com/o/oauth2/token',
      :audience => 'https://accounts.google.com/o/oauth2/token',
      :scope => 'https://www.googleapis.com/auth/books',
      :issuer => '650208153597-dm7fpclk7v4k5j7j7mf7n8c52dvagev4@developer.gserviceaccount.com',
      :signing_key => key
    )
    client.authorization.fetch_access_token!

    result = client.execute(
    :api_method => books.volumes.list,
    :parameters => {'q' => params[:q], 'maxResults' => 5}
    )

    @books_hash = JSON.parse(result.response.body)["items"]
  end

  def show

  end
end
