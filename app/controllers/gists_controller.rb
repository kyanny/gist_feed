class GistsController < ApplicationController
  def index
  end

  def feed
    @gists = Octokit.gists nil, per_page: 10
  end
end
