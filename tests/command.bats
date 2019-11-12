#!/usr/bin/env bats

load "$BATS_PATH/load.bash"

command_hook="$PWD/hooks/command"


@test "has command to upload fitness function steps" {

  run cat "$command_hook"

  assert_output --partial "buildkite-agent pipeline upload fitness.yml"
}