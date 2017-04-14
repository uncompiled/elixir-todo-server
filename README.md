# elixir-todo-server

This project is the todo server exercise from Elixir in Action.

## Usage

Run `iex -S mix`.

```elixir
iex(1)> Todo.Supervisor.start_link
Starting Todo.Supervisor
Starting Todo.ProcessRegistry
Starting Todo.PoolSupervisor
Starting Todo.DatabaseWorker 1
Starting Todo.DatabaseWorker 2
Starting Todo.DatabaseWorker 3
Starting Todo.ServerSupervisor
Starting Todo.Cache
{:ok, #PID<0.119.0>}
iex(2)> my_list = Todo.Cache.server_process("my-list")
Starting Todo.Server for my-list
#PID<0.128.0>
iex(3)> Todo.Server.entries(my_list, {2017, 04, 13})
[]
iex(4)> Todo.Server.add_entry(my_list, %{date: {2017, 04, 13}, title: "Meeting"})
:ok
iex(5)> Todo.Server.entries(my_list, {2017, 04, 13})
[%{date: {2017, 4, 13}, id: 1, title: "Meeting"}]

```
