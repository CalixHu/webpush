defmodule WebpushTest do
  use ExUnit.Case
  doctest Webpush

  test "greets the world" do
    assert Webpush.hello() == :world
  end
end
