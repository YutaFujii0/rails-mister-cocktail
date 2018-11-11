class SearchGithubAccount
  def self.call(username)
    url = "https://api.github.com/users/#{username}"
    begin
      doc = JSON.parse(open(url).read)
      if doc["id"]
        { avatar_url: doc["avatar_url"], github_name: doc["name"] }
      end
    rescue
      puts "Account not found."
    end
  end
end
