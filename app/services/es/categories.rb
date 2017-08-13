module ES
  class Categories
    def self.search(params)
      searcher = new(params)
      searcher.search
    end

    def initialize(params)
      @query = params
    end

    def search
      results = {}
      results[:categories] = Category.where("name LIKE '%bath%'")
    end
  end
end
