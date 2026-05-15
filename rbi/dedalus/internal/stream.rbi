# typed: strong

module Dedalus
  module Internal
    class Stream
      Message =
        type_member(:in) { { fixed: Dedalus::Internal::Util::ServerSentEvent } }
      Elem = type_member(:out)

      include Dedalus::Internal::Type::BaseStream

      # @api private
      sig { override.returns(T::Enumerable[Elem]) }
      private def iterator
      end
    end
  end
end
