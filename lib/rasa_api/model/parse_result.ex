# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RasaApi.Model.ParseResult do
  @moduledoc """
  NLU parser information. If set, message will not be passed through NLU, but instead this parsing information will be used.
  """

  @derive [Poison.Encoder]
  defstruct [
    :entities,
    :intent,
    :intent_ranking,
    :text
  ]

  @type t :: %__MODULE__{
    entities: [Entity] | nil,
    intent: Intent | nil,
    intent_ranking: [Intent] | nil,
    text: String.t
  }
end

defimpl Poison.Decoder, for: RasaApi.Model.ParseResult do
  import RasaApi.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:entities, :list, RasaApi.Model.Entity, options)
    |> deserialize(:intent, :struct, RasaApi.Model.Intent, options)
    |> deserialize(:intent_ranking, :list, RasaApi.Model.Intent, options)
  end
end

