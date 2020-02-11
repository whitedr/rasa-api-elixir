# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RasaApi.Model.DomainConfig do
  @moduledoc """
  Addional option
  """

  @derive [Poison.Encoder]
  defstruct [
    :store_entities_as_slots
  ]

  @type t :: %__MODULE__{
    store_entities_as_slots: boolean() | nil
  }
end

defimpl Poison.Decoder, for: RasaApi.Model.DomainConfig do
  def decode(value, _options) do
    value
  end
end

