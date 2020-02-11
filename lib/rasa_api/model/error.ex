# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RasaApi.Model.Error do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :version,
    :status,
    :message,
    :reason,
    :details,
    :help,
    :code
  ]

  @type t :: %__MODULE__{
    version: String.t | nil,
    status: String.t | nil,
    message: String.t | nil,
    reason: String.t | nil,
    details: Map | nil,
    help: String.t | nil,
    code: float() | nil
  }
end

defimpl Poison.Decoder, for: RasaApi.Model.Error do
  import RasaApi.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:details, :struct, RasaApi.Model.Map, options)
  end
end
