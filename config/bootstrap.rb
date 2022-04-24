module Config
    def path_load_files(local_path = nil)
        require 'ruby_http_client'
        require 'json'

        if(local_path == 'bin')
            require_relative '../config/provider'

            require_relative '../src/provider/provider_service'

            require_relative '../src/words/word_moves'
        else
            require_relative 'config/provider'

            require_relative 'src/provider/provider_service'

            require_relative 'src/words/word_moves'
        end
    end
end
