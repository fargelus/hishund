defmodule HishundTest do
  use ExUnit.Case
  doctest Hishund

  test "greets the world" do
    assert Hishund.hello() == :world
  end
end
