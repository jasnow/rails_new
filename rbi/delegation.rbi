# typed: strong
module ActiveRecord
  module Delegation
    module DelegateCache
      def relation_delegate_class(klass) ; end
      def initialize_relation_delegate_cache ; end
      def inherited(child_class) ; end
      def generate_relation_method(method); end

      protected def include_relation_methods(delegate) ; end
      private def generated_relation_methods ; end
    end

    class GeneratedRelationMethods < Module
      include Mutex_m

      def generate_method(method) ; end
    end
    private_constant :GeneratedRelationMethods

    extend ActiveSupport::Concern

    delegate :to_xml, :encode_with, :length, :each, :join,
             :[], :&, :|, :+, :-, :sample, :reverse, :rotate, 
             :compact, :in_groups, :in_groups_of,
             :to_sentence, :to_formatted_s, :as_json,
             :shuffle, :split, :slice, :index, :rindex, to: :records

    delegate :primary_key, :connection, to: :klass

    module ClassSpecificRelation
      extend ActiveSupport::Concern

      module ClassMethods
        def name ; end
      end

      private def method_missing(method, *args, &block) ; end
    end

    module ClassMethods
      def create(klass, *args) ; end
      private def relation_class_for(klass) ; end
    end

    private def respond_to_missing?(method, _); end
  end
end
