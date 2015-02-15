module Utils
  module UrlEncoder

    ALPHABET =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".split(//)
    BASE = 62

    def self.encode_base_62(number)
      results = []

      while number > 0
        q,m = number.divmod(BASE)
        results << m
        number = q
      end

      results.reverse.map! { |i| ALPHABET[i] }.join
    end

  end
end