require 'digest/md5'

module Jekyll
  module GravatarFilter
    def to_gravatar(email, size=135)
      #"https://www.gravatar.com/avatar/#{hash(email)}?s=#{size}"
      "https://www.gravatar.com/avatar/#{hash(email)}?s=#{size}"
    end

    private :hash

    def hash(email)
      Digest::MD5.hexdigest(email)
    end
  end
end

Liquid::Template.register_filter(Jekyll::GravatarFilter)
