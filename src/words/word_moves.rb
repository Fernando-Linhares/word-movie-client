module Words

    class WordMoves

        def self.get(env = 'console')
            url = Config::URL

            provider = Provider::ProviderService.new

            words = provider.request url

            total = words.size
            
            i = rand(total)
            
            word = words[i]['word']

            movie = words[i]['movie']

            if(env != 'console')
                return "#{word} - movie #{movie}"
            else
                output(movie, word);
            end
        end

        def self.output(movie, word)
            puts "\n\s\e[32m#{word}\e[0m\n\n\s\e[33m - movie #{movie} \e[0m"
        end
    end
end