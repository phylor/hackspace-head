class PlayersController < ApplicationController
  def index
    client = Contentful::Client.new(
      space: 'xgf5e7365iv2',
      access_token: 'B3mD-MYx05RkKMPuZFylX34ZiX9_M43ltx2diDeO4mM'
    )

    @players = client.entries(content_type: 'monthlyRanking', order: 'fields.name')
  end
end
