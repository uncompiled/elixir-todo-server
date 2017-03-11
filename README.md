# elixir-todo-server

This project is the todo server exercise from Elixir in Action.

## Usage

Run `iex -S mix`.

```elixir
iex(1)> Todo.Supervisor.start_link
Starting Todo.Supervisor
Starting Todo.Cache
Starting Todo.Database (server)
Starting Todo.DatabaseWorker
Starting Todo.DatabaseWorker
Starting Todo.DatabaseWorker
{:ok, #PID<0.119.0>}
iex(2)> my_list = Todo.Cache.server_process("my-list")
Starting Todo.Server for my-list
#PID<0.126.0>
iex(3)> Todo.Server.entries(my_list, {2017, 03, 01})
[]
iex(4)> Todo.Server.add_entry(my_list, %{date: {2017, 02, 27}, title: "Meeting"})
:ok
iex(5)> Todo.Server.entries(my_list, {2017, 02, 27})
[%{date: {2017, 2, 27}, id: 1, title: "Meeting"}]
```
