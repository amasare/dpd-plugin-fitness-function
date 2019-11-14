#!/usr/bin/env bats

load "$BATS_PATH/load.bash"

environment_hook="$PWD/hooks/environment"


@test "command_dir path is not empty" {
  export BUILDKITE_PLUGIN_DPD_PLUGIN_SUPPORT_PLUGINSOURCE=some_value

  run "$environment_hook"

  assert_output --partial hooks/../bin
}