defmodule Elicord.Commands do
  use Alchemy.Cogs
  alias Alchemy.{Client, Cache, User, Embed}
  import Embed
  alias Elicord.Util.Time

  Cogs.def ping do
    old = message.timestamp
    {:ok, message} = Cogs.say("pong!")
    
    time = Time.diff(message.timestamp, old)
    Client.edit_message(message, "Lantency is #{time}ms - " <> message.content)
  end
end