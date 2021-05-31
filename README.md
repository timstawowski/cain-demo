# Demo using cain lib

## Setup

After cloning this project follow these steps.

1. Load `cain` dependency via `mix deps.get`.
2. Deploy the model in `priv/demo.bpmn` to your running Camunda instance.
3. Adjust the url in `config/config.exs`.
4. Start this application via `iex -S mix`.
5. Start an instance.
  ```elixir
  iex> Example.start_process_instance("test")
  ```

6. Start the worker.

  ```elixir
  iex> WorkerCode.start_link()
  ```