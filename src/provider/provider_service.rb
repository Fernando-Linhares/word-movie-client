module Provider

    class ProviderService

        def request(host)
            client = SendGrid::Client.new host: host

            response = client.get

            object_json = JSON.parse(response.body)

            return object_json["data"]["words"]
        end
    end
end