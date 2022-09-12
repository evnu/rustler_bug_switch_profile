defmodule Reproduce do
  use Rustler, otp_app: :rustler_mode, crate: "reproduce"

  def mode do
    determine_mode() |> IO.inspect()
  end

  defp determine_mode(), do: :erlang.nif_error(:nif_not_loaded)
end
