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
    end
  end
end
