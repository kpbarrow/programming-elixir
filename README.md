# Programming-Elixir
A repository for stuff I wrote while working through Programming Elixir >= 1.6. I doubt there is anything of practical use, its a repo for me to keep stuff in...

## Unit Testing
Everything is run through UTs, because that's how I currently roll. You can run individually with

`mix test`

or have a file watcher run tests for you:

`mix test.watch`

to get the watcher working you will need:

* install inotify tools[https://github.com/inotify-tools/inotify-tools/wiki] (Arch - `pacman -S inotify-tools`)
* run `mix deps.get` to get the dependencies 


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `chapter4` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:chapter4, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/chapter4](https://hexdocs.pm/chapter4).

