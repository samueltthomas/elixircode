defmodule ElixircodeTest do
  use ExUnit.Case
  doctest Elixircode

  test "greets the world" do
    assert Elixircode.hello() == :world
  end
end
