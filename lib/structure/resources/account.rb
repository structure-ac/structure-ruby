module Structure
  class AccountResource < Resource
    def me
      Account.new get_request("me").body
    end
  end
end
