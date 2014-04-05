class GistsController < ApplicationController
  http_basic_authenticate_with name: ENV["BASIC_AUTH_USER"], password: ENV["BASIC_AUTH_PASSWORD"], only: :feed

  def index
  end

  def feed
    @gists = Octokit.gists nil, per_page: 10
  end
end
