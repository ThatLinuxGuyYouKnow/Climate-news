# Carbon Zero News Aggregator

## Project Overview
Carbon Zero is a Rails-based news aggregation project focused on collecting and storing environmental and climate-related news articles from around the world.

## Current Status
🚧 **Work in Progress** 🚧

### Features
- Fetches top environmental news articles from multiple countries
- Uses NewsAPI for retrieving articles
- Stores articles in Supabase database
- Supports batch news retrieval across 53 countries

### Technical Components
- News Fetching Service: `NewsFetcherService`
- Background Job: `NewsFetchJob`
- Rake Task: `news_fetch:all_countries`

## Requirements
- Ruby (version recommended)
- Rails
- NewsAPI Key
- Supabase Account

## Setup

### Environment Variables
Required environment variables:
- `NEWS_API_KEY`: NewsAPI authentication key
- `SUPABASE_URL`: Your Supabase project URL
- `SUPABASE_API_KEY`: Supabase API key

### Installation
1. Clone the repository
2. Run `bundle install`
3. Set up environment variables
4. Run database migrations

### Running News Fetch
```bash
rails news_fetch:all_countries

```