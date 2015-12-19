class WelcomeController < ApplicationController
  def index
    current_uri = request.original_url

    @welcome =
    {
      name: 'MecanicarAPI',
      for: 'Mecanicar',
      current_version: {
        version: 'v1',
        codename: '',
        status: 'development'
      },
      who?: [{ name: 'Bruno Casali', contact: '@brunoocasali', email: 'brunoocasali@gmail.com' }],
      start:
        {
          docs: 'no docs, for a while',
          why: 'Follow the correct data generated by your car.',
          end_points: %W(#{current_uri}api/v1/),
          home_page: 'https://github.com/mecanicar/api'
        }
    }

    respond_with @welcome
  end
end
