# dpd-plugin-fitness-function
Checks DPD plugins meet fitness expectations of a DPD plugins and gives the option to version plugins using semver.

### Fitness expectations:
1. Lint
    * Checks for a plugin.yml file (and validates it against [the plugin.yml JSON schema](lib/plugin-yaml-schema.yml))
    * Checks that all readme examples match the plugin’s schema
    * Check the readme version numbers are up-to-date with the latest plugin version
    * Machine-parseable TAP output

    Further reading and tools:
    * [Buildkite Plugin Linter](https://github.com/buildkite-plugins/buildkite-plugin-linter/)

2. [Shellcheck](https://github.com/koalaman/shellcheck)
3. Plugin has [tests](https://github.com/buildkite-plugins/buildkite-plugin-tester) in its `tests` directory and they all pass successfully

### Release:
You will need to hit the "Request Release" button in the Buildkite pipeline to input release details such as the version number (using [semver](https://semver.org/)) and any associated release notes. The version number will be used to create a git tag that is then pushed to github from the pipeline.

## Example

```yml
steps:
  - plugins:
      - https://github.com/amasare/dpd-plugin-fitness-function#v1.0.3:
          pluginsource: https://github.com/amasare/buildkite-plugin-hello-world
```

## Configuration

### pluginsource
The id of the plugin (e.g. my-org/my-plugin OR https://github.com/my-org/my-plugin )

```yml
steps:
  - plugins:
      - https://github.com/amasare/dpd-plugin-fitness-function#v1.0.3:
          pluginsource: <source for plugin under test>
```

## Testing Locally
To run tests locally you will need to: 
*  install bats. `brew install bats-core` on MacOS. Other installation instructions [here](https://github.com/bats-core/bats-core).
*  run tests with buildkites plugin tester which comes with supporting test libraries. `docker run it --rm  -v "$(pwd):/plugin" buildkite/plugin-tester`.


Testing recommendations [here](https://github.com/buildkite-plugins/buildkite-plugin-tester)