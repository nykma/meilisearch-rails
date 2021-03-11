module MeiliSearch
  class MSJob < ::ActiveJob::Base
    queue_as :meilisearch

    def perform(record, method)
      record.send(method)
    end
  end
end
