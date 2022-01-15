defmodule FormWeb.PowEmailConfirmation.MailerView do
  use FormWeb, :mailer_view

  def subject(:email_confirmation, _assigns), do: "Confirm your email address"
end
