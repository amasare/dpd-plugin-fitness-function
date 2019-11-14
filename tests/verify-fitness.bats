#!/usr/bin/env bats

load "$BATS_PATH/load.bash"

verify_fitness_command="$PWD/hooks/../bin/verify-fitness"


@test "verify fitness command has instructions to upload fitness function steps" {

  run cat "$verify_fitness_command"

  assert_output --regexp "buildkite-agent pipeline upload .*/verify-fitness.yml"
}