# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RasaApi.Model.TemplateDescription do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :text
  ]

  @type t :: %__MODULE__{
    text: String.t
  }
end

defimpl Poison.Decoder, for: RasaApi.Model.TemplateDescription do
  def decode(value, _options) do
    value
  end
end
