source "https://rubygems.org"

# Jekyll for Docker environment (Linux)
gem "jekyll", "~> 4.3.0"
gem "minima", "~> 2.5"
gem "webrick", "~> 1.7"

# Jekyll plugins
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-sitemap"
end

# Windows and JRuby does not include zoneinfo files
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end
