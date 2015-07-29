module Login
  extend ActiveSupport::Concern

  private

    def login(user)
      session[:user_id] = user.id
    end
end      