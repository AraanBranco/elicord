defmodule ElicordTest do
  use ExUnit.Case
  doctest Elicord

  test "greets the world" do
    assert Elicord.hello() == :world
  end
end
