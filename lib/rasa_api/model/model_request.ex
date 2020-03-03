# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RasaApi.Model.ModelRequest do
  @moduledoc """
  
  """
  alias RasaApi.Model.EndpointConfig

  @derive [Poison.Encoder]
  defstruct [
    :model_file,
    :model_server,
    :remote_storage
  ]

  @type t :: %__MODULE__{
    model_file: String.t | nil,
    model_server: EndpointConfig | nil,
    remote_storage: String.t | nil
  }
end

defimpl Poison.Decoder, for: RasaApi.Model.ModelRequest do
  import RasaApi.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:model_server, :struct, RasaApi.Model.EndpointConfig, options)
  end
end

