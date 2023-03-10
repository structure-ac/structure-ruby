module Structure
  class AccountResource < Resource
    def info
      Account.new get_request("me").body
    end
  end
end
