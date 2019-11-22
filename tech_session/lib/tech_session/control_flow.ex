defmodule ControlFlow do
  # ...

  def handle_call({:position_island, player, key, row, col}, _from, state) do
    board = player_board(state, player)

    with {:ok, rules} <- Rules.check(state.rules, {:position_islands, player}),
         {:ok, coordinate} <- Coordinate.new(row, col),
         {:ok, island} <- Island.new(key, coordinate),
         %{} = board <- Board.position_island(board, key, island) do
      state
      |> update_board(player, board)
      |> update_rules(rules)
      |> reply_success(:ok)
    else
      :error -> reply_error(state, :error)
      {:error, :invalid_coordinate} -> reply_error(state, :invalid_coordinate)
      {:error, :invalid_island_type} -> reply_error(state, :invalid_island_type)
      {:error, :overlapping_island} -> reply_error(state, :overlapping_island)
    end
  end

  # ...
end
