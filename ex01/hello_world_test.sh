#!/usr/bin/env bats

@test "When given no name, it should greet the world!" {
  run bash hello_world.sh
  echo "Hello, World!" ]
}

@test 'When given "Alice" it should greet Alice!' {
  run bash hello_world.sh Alice

  echo  "Hello, Alice!" ]
}

@test 'When given "Bob" it should greet Bob!' {
  run bash hello_world.sh Bob

  echo "Hello, Bob!" ]
}
