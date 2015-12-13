class TestApp
  module Forms
    class Signup < Wedge::Plugins::Form
      name :registration_form

      attr_accessor :username, :password, :email, :phone_number

      def validate
        assert_present :username
        assert_present :password
        assert_present :email
        assert_present :phone_number
      end
    end
  end
end
