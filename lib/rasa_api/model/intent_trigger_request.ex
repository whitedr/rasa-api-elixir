# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RasaApi.Model.IntentTriggerRequest do
  @moduledoc """
  
  """
  alias RasaApi.Model.Map

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :entities
  ]

  @type t :: %__MODULE__{
    name: String.t,
    entities: Map | nil
  }
end

defimpl Poison.Decoder, for: RasaApi.Model.IntentTriggerRequest do
  import RasaApi.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:entities, :struct, RasaApi.Model.Map, options)
  end
end

