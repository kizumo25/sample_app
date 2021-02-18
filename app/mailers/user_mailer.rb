class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, Subject: "Account activation"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, Subject: "Password reset"
  end
end
