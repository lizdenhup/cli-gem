# Wikinews cli-gem

This is a Ruby gem for scraping the headlines, article URLS, and article summaries from the crowd-sourced news site, Wikinews. This gem depends on Nokogiri for its scraping ability and is executed from the terminal. 

This gem uses a dispreferred openssl workaround where the server is not asked to verify security certificates (scaper.rb, line 8). I would not utilize this workaround in a production environment because it defeats the advantages of using openssl for browsing websites in a secure fashion. In the future, I would like to get the root of the openssl issue to avoid using this workaround. 
