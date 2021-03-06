# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RasaApi.Model.InlineObject do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :text,
    :message_id
  ]

  @type t :: %__MODULE__{
    text: String.t | nil,
    message_id: String.t | nil
  }
end

defimpl Poison.Decoder, for: RasaApi.Model.InlineObject do
  def decode(value, _options) do
    value
  end
end

