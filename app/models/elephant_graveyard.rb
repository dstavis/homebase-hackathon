  def select_api(url)
    base = get_base_uri(url) 
    if base == "craigslist"
      @api = get_api(@craigslist_id, @craigslist_key)
    end
  end

    def get_api(id)
    # hit api route using HTTParty
    #GET kimonoapis/#{id}?apikey=#{craigslist_key}
    return 
  end