defmodule Elicord do
  use Application
  alias Alchemy.Client

  @token Application.fetch_env!(:elicord, :token)

  def start(_type, _args) do
   run = Client.start(@token)
    load_modules()
    run
  end

  defp load_modules do
   use Elicord.Commands
   use Elicord.EventLogger
  end
end
