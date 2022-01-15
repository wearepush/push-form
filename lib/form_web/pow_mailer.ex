defmodule FormWeb.Pow.Mailer do
  use Pow.Phoenix.Mailer
  use Swoosh.Mailer, otp_app: :form

  import Swoosh.Email

  require Logger

  @impl true
  def cast(%{user: user, subject: subject, text: text, html: html}) do
    %Swoosh.Email{}
    |> to({"", user.email})
    |> from({"My App", "myapp@example.com"})
    |> subject(subject)
    |> html_body(html)
    |> text_body(text)

    # end
  end

  @impl true
  def process(email) do
    Logger.debug("E-mail sent: #{inspect(email)}")

    if Mix.env() == :prod do
      Task.start(fn ->
        email
        |> deliver()
        |> log_warnings()
      end)

      :ok
    end
  end

  defp log_warnings({:error, reason}) do
    Logger.warn("Mailer backend failed with: #{inspect(reason)}")
  end

  defp log_warnings({:ok, response}), do: {:ok, response}
end
