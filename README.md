# elixir-todo-server

This project is the todo server exercise from Elixir in Action.

## Usage

- Run `mix deps.get`
- Run `iex -S mix`

```elixir
Starting Todo.Supervisor
Starting Todo.PoolSupervisor
Starting Todo.DatabaseWorker 1
Starting Todo.DatabaseWorker 2
Starting Todo.DatabaseWorker 3
Starting Todo.ServerSupervisor
Starting Todo.Cache
Interactive Elixir (1.4.0) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> my_list = Todo.Cache.server_process("my-list")
Starting Todo.Server for my-list
#PID<0.271.0>
iex(2)> Todo.Server.entries(my_list, {2017, 04, 13})
[]
iex(3)> Todo.Server.add_entry(my_list, %{date: {2017, 04, 13}, title: "Meeting"})
:ok
iex(4)> Todo.Server.entries(my_list, {2017, 04, 13})
[%{date: {2017, 4, 13}, id: 1, title: "Meeting"}]
```
