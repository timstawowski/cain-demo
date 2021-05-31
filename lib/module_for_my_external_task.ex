defmodule ModuleForMyExternalTask do
  @moduledoc """
  Module which implements the actual external work.
  """

  def handle(payload_from_external_task) do
    IO.inspect(payload_from_external_task)
    WorkerCode.success()
  end

end
