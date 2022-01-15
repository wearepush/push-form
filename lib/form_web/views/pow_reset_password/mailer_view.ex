defmodule FormWeb.PowResetPassword.MailerView do
  use FormWeb, :mailer_view

  def subject(:reset_password, _assigns), do: "Reset password link"
end
