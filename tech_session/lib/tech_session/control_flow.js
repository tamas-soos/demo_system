//
//
//
//
//
//
//
//

export function positionIsland({ player, key, row, col }, state) {
  const board = player_board(state, player);

  const rules = Rules.check(state.rules, { type: "position_islands", player });
  if (!rules) {
    return reply_error(state, "Error");
  }

  const coordinate = Coordinate.new(row, col);
  if (!coordinate) {
    return reply_error(state, "Invalid coordinate");
  }

  const island = Island.new(key, coordinate);
  if (!island) {
    return reply_error(state, "Invalid coordinate");
  }

  const board = Board.position_island(board, key, island);
  if (!island) {
    reply_error(state, "Overlapping island");
  }

  const newState = update_rules(update_board(state, player, board), rules);

  return reply_success(newState, "Ok");
}

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

export function positionIsland({ player, key, row, col }, state) {
  const board = player_board(state, player);

  try {
    const rules = Rules.check(state.rules, {
      type: "position_islands",
      player
    });
    const coordinate = Coordinate.new(row, col);
    const island = Island.new(key, coordinate);
    const board = Board.position_island(board, key, island);

    const newState = update_rules(update_board(state, player, board), rules);

    return reply_success(newState, "Ok");
  } catch (error) {
    return reply_error(state, error);
  }
}
