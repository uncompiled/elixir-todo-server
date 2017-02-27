# elixir-todo-server

This project is the todo server exercise from Elixir in Action.

## Usage

Run `iex -S mix`.

```elixir
iex(1)> {:ok, cache} = Todo.Cache.start
{:ok, #PID<0.108.0>}
iex(2)> my_list = Todo.Cache.server_process(cache, "my_list")
#PID<0.114.0>
iex(3)> Todo.Server.add_entry(my_list, %{date: {2017, 02, 27}, title: "Meeting"})
:ok
iex(4)> Todo.Server.entries(my_list, {2017, 02, 27})
[%{date: {2017, 2, 27}, id: 1, title: "Meeting"}]
```
