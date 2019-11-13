# dpd-plugin-fitness-function
checks dpd plugins meet fitness expectations  

## Example

```yml
steps:
  - plugins:
      - https://github.com/amasare/dpd-plugin-fitness-function#v1.0.0:
          pluginsource: https://github.com/amasare/buildkite-plugin-hello-world
```

## Configuration

### pluginsource
The id of the plugin (e.g. my-org/my-plugin OR https://github.com/my-org/my-plugin )

```yml
steps:
  - plugins:
      - https://github.com/amasare/dpd-plugin-fitness-function#v1.0.0:
          pluginsource: <source for plugin under test>
```
