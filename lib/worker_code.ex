defmodule WorkerCode do

  use Cain.ExternalWorker, [
    max_tasks: 5,
    use_priority: true,
    polling_interval: 1000
  ]

  def register_topics do
    # referencing the topic name from the external task in the bpmn-model to the
    # module, which implements the acutal external work code.
    [{:"my-task", {ModuleForMyExternalTask, :handle, []},  [lock_duration: 5000]}]
  end

end
