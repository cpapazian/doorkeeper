module Doorkeeper
  module Models
    class ScopesValidator < ActiveModel::Validator
      def validate(record)
        return unless record.scopes_string.present?
        unless Doorkeeper::OAuth::Helpers::ScopeChecker.valid?(record.scopes_string, Doorkeeper.configuration.scopes)
          record.errors[:scopes] << 'is not a valid scope'
        end
      end
    end
  end
end
