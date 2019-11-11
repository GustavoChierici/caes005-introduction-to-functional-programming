# Strings and Binaries

## String Literals

- Single-quoted and double-quoted
- [UTF-8](https://en.wikipedia.org/wiki/UTF-8)
- Escape sequences
- #{...} syntax

### Exercise

On iex:

```elixir
  IO.puts "\u00A9"
  name = "Adolfo"
  "Hello, #{String.capitalize name}\u2757"
```

# References

[Programming Elixir 1.6: Functional |> Concurrent |> Pragmatic |> Fun, by Dave Thomas](http://bit.ly/2rqD9VF)