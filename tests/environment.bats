#!/usr/bin/env bats

load "$BATS_PATH/load.bash"

environment_hook="$PWD/hooks/environment"


@test "command_dir path is not empty" {

  run "$environment_hook"

  assert_output --partial hooks/../bin
}