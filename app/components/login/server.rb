class TestApp
  module Components
    module LoginServer
      def login_user user
        username = user["username"]
        pass = user["password"]

        if login(User, username, pass)
          { success: true }
        else
          { success: false, errors: {
            username: ['Invalid username/password combination'] }
          }
        end
      end

      def create_user user
        username = user["username"]
        pass = user["password"]
        email = user["email"]
        phone_number = user["phone_number"]

        user = User.create({
          username: username,
          password: pass,
          email: email,
          phone_number: phone_number
        })

        if user
          { success: true }
        else
          { success: false, errors: {
            username: ['Something went wrong! Please try again'] }
          }
        end
      end
    end
  end
end
