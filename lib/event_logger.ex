defmodule Elicord.EventLogger do
  use Alchemy.Events

  Events.on_message(:inspect)
  def inspect(message) do
    IO.inspect message.content
  end
end