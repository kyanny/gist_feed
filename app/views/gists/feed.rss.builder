xml.instruct! :xml, version: "1.0" 
xml.rss version: "2.0" do
  xml.channel do
    xml.title "My Gists"
    xml.description "My Gists"
    xml.link "https://gist.github.com/#{@gists.first.owner.login}"

    @gists.each do |gist|
      xml.item do
        xml.title gist.description.present? ? gist.description : "gist:#{gist.id}"
        xml.description gist.files.attrs.map{|file, data| "#{file}\n#{data[:_rels][:raw].get.data}" }.join
        xml.pubDate gist.created_at.to_s(:rfc822)
        xml.link "https://gist.github.com/#{gist.owner.login}/#{gist.id}"
        xml.guid "https://gist.github.com/#{gist.owner.login}/#{gist.id}"
      end
    end
  end
end