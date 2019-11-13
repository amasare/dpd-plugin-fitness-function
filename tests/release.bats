#!/usr/bin/env bats

load "$BATS_PATH/load.bash"

release_command="$PWD/hooks/../bin/release"


@test "release command has instructions to upload release steps" {

  run cat "$release_command"

  assert_output --regexp "buildkite-agent pipeline upload .*/release.yml"
}