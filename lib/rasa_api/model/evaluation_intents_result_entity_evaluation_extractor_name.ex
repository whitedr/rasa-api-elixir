# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RasaApi.Model.EvaluationIntentsResultEntityEvaluationExtractorName do
  @moduledoc """
  Entity evaluation result for entity extractor
  """

  @derive [Poison.Encoder]
  defstruct [
    :report,
    :precision,
    :f1_score,
    :accuracy
  ]

  @type t :: %__MODULE__{
    report: String.t | nil,
    precision: float() | nil,
    f1_score: float() | nil,
    accuracy: float() | nil
  }
end

defimpl Poison.Decoder, for: RasaApi.Model.EvaluationIntentsResultEntityEvaluationExtractorName do
  def decode(value, _options) do
    value
  end
end

