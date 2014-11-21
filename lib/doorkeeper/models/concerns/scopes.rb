module Doorkeeper
  module Models
    module Scopes
      def scopes
        OAuth::Scopes.from_string(self[:scopes]) unless self[:scopes].nil?
      end

      def scopes_string
        self[:scopes]
      end

      def includes_scope?(*required_scopes)
        if required_scopes.blank?
          true
        elsif scopes.nil?
          false
        else
          required_scopes.any? { |s| scopes.exists?(s.to_s) }
        end
      end
    end
  end
end
