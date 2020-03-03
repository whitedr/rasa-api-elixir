# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RasaApi.Model.EndpointConfig do
  @moduledoc """
  
  """
  alias RasaApi.Model.Map
  alias RasaApi.Model.Map
  alias RasaApi.Model.Map

  @derive [Poison.Encoder]
  defstruct [
    :url,
    :params,
    :headers,
    :basic_auth,
    :token,
    :token_name,
    :wait_time_between_pulls
  ]

  @type t :: %__MODULE__{
    url: String.t | nil,
    params: Map | nil,
    headers: Map | nil,
    basic_auth: Map | nil,
    token: String.t | nil,
    token_name: String.t | nil,
    wait_time_between_pulls: integer() | nil
  }
end

defimpl Poison.Decoder, for: RasaApi.Model.EndpointConfig do
  import RasaApi.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:params, :struct, RasaApi.Model.Map, options)
    |> deserialize(:headers, :struct, RasaApi.Model.Map, options)
    |> deserialize(:basic_auth, :struct, RasaApi.Model.Map, options)
  end
end

