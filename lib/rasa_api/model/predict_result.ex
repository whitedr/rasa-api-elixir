# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RasaApi.Model.PredictResult do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :scores,
    :policy,
    :tracker
  ]

  @type t :: %__MODULE__{
    scores: [PredictResultScores] | nil,
    policy: String.t | nil,
    tracker: Tracker | nil
  }
end

defimpl Poison.Decoder, for: RasaApi.Model.PredictResult do
  import RasaApi.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:scores, :list, RasaApi.Model.PredictResultScores, options)
    |> deserialize(:tracker, :struct, RasaApi.Model.Tracker, options)
  end
end
