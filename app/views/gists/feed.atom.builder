atom_feed do |feed|
  feed.title "My Gists"
  feed.update @gists.max_by(&:published_at).published_at
  @gists.each do |gist|
    feed.entry gist, published: gist.published_at do |entry|
      entry.title gist.description
      entry.content gist.description
      entry.author do |author|
        author.name ENV["AUTHOR_NAME"]
      end
    end
  end
end