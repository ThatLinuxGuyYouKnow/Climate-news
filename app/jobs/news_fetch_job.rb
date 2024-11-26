class NewsFetchJob < ApplicationJob
    queue_as :default
  
    def perform(country)
      supabase_client = SupabaseClient.new(ENV['SUPABASE_URL'], ENV['SUPABASE_API_KEY'])
  
      news_fetcher = NewsFetcherService.new(country)
      articles = news_fetcher.fetch_news_articles
  
      if articles.present?
        articles.each do |article|
          supabase_client.create_row('news_articles', { country => article })
        end
      end
    end
  end
  