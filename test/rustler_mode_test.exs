defmodule RustlerModeTest do
  use ExUnit.Case
  doctest RustlerMode

  test "greets the world" do
    assert RustlerMode.hello() == :world
  end
end
