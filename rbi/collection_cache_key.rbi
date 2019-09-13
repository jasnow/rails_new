# typed: strong
module ActiveRecord
  module CollectionCacheKey
    def collection_cache_key(collection = all, timestamp_column = :updated_at) ; end
  end
end
