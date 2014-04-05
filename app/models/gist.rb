class Gist
  attr_accessor :gist

  def initialize(gist)
    @gist = gist
  end

  def title
    if gist.description.present?
      gist.description
    else
      "gist:#{gist.id}"
    end
  end

  def content
    gist.files.attrs.map { |file, data|
      "#{file}\n#{data[:_rels][:raw].get.data}"
    }
  end

  def published_at
    gist.created_at
  end

  def author
    gist.owner.login
  end
end
