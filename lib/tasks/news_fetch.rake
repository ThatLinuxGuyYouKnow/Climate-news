namespace :news_fetch do
    desc 'Fetch news for all countries'
    task all_countries: :environment do
      COUNTRIES.each do |country|
        NewsFetchJob.perform_now(country)
      end
    end
  end
  