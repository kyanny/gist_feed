class GistsController < ApplicationController
  def index
  end

  def feed
    @gists = Octokit.gists.map { |gist| ::Gist.new(gist) }
  end
end
