defmodule Example do
  @moduledoc false

  def start_process_instance(business_key) do
    body = %{"businessKey" => business_key}
    request = {:post, "/process-definition/key/DEMO/start", %{}, body}
    Cain.Client.Default.submit(request) # submit any request via default client implementation
  end

end
