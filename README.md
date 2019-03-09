# REPORELEASER

[![BuyMeCoffee][buymecoffeebedge]][buymecoffee]

_Create a new release using  [reporeleaser][reporeleaser]._

## Example

```
workflow "Release" {
  on = "push"
  resolves = ["reporeleaser"]
}

action "reporeleaser" {
  uses = "ludeeus/action-reporeleaser@master"
  env = {
    ACTION_TEST = "True"
    ACTION_DRAFT = "True"
    ACTION_TYPE = "minor"
  }
  secrets = ["GITHUB_TOKEN"]
}
```

**REQUIRE GITHUB_TOKEN**

## ENV VARS

ENV | description
-- | --
`ACTION_TYPE` | Can be `major`, `minor`, `patch` or a version number like `1.1.1` or `v1.1.1`. _(defaults to `minor`)_
`ACTION_DRAFT` | Set this to `True` to create a release draft.
`ACTION_TEST` | When this is `True` it will not push anything.

[reporeleaser]: https://github.com/ludeeus/reporeleaser
[buymecoffee]: https://www.buymeacoffee.com/ludeeus
[buymecoffeebedge]: https://camo.githubusercontent.com/cd005dca0ef55d7725912ec03a936d3a7c8de5b5/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6275792532306d6525323061253230636f666665652d646f6e6174652d79656c6c6f772e737667
