class PlayersController < ApplicationController
  def index
    @players = client.entries(content_type: 'monthlyRanking', order: 'fields.name')
  end

  def show
    @player = client.entry(params[:id], content_type: 'monthlyRanking', include: 1)
  end

  private

  def client
    Contentful::Client.new(
      space: 'xgf5e7365iv2',
      access_token: 'B3mD-MYx05RkKMPuZFylX34ZiX9_M43ltx2diDeO4mM'
    )
  end
end
