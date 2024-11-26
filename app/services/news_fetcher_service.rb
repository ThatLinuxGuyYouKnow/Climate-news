class NewsFetcherService
    include HTTParty
  
    base_uri 'https://newsapi.org/v2'
    default_params apiKey: ENV['NEWS_API_KEY']
  
    def initialize(country)
      @country = country
    end
  
    def fetch_news_articles
      options = {
        query: {
          country: @country,
          category: 'environment',
          q: 'climate',
          pageSize: 100
        }
      }
  
      response = self.class.get('/top-headlines', options)
      response.parsed_response['articles'] if response.success?
    end
  end
  