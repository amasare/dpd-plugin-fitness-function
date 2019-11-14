# dpd-plugin-fitness-function
checks dpd plugins meet fitness expectations  

## Example

```yml
steps:
  - plugins:
      - https://github.com/amasare/dpd-plugin-fitness-function#v1.0.2:
          pluginsource: https://github.com/amasare/buildkite-plugin-hello-world
```

## Configuration

### pluginsource
The id of the plugin (e.g. my-org/my-plugin OR https://github.com/my-org/my-plugin )

```yml
steps:
  - plugins:
      - https://github.com/amasare/dpd-plugin-fitness-function#v1.0.2:
          pluginsource: <source for plugin under test>
```

## Testing Locally
To run tests locally you will need to: 
*  install bats. `brew install bats-core` on MacOS. Other installation instructions [here](https://github.com/bats-core/bats-core).
*  run tests with buildkites plugin tester which comes with supporting test libraries. `docker run it --rm  -v "$(pwd):/plugin" buildkite/plugin-tester`.


Testing recommendations [here](https://github.com/buildkite-plugins/buildkite-plugin-tester)