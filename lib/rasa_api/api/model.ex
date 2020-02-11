# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RasaApi.Api.Model do
  @moduledoc """
  API calls for all endpoints tagged `Model`.
  """

  alias RasaApi.Connection
  import RasaApi.RequestBuilder


  @doc """
  Parse a message using the Rasa model
  Predicts the intent and entities of the message posted to this endpoint. No messages will be stored to a conversation and no action will be run. This will just retrieve the NLU parse results.

  ## Parameters

  - connection (RasaApi.Connection): Connection to server
  - inline_object (InlineObject): 
  - opts (KeywordList): [optional] Optional parameters
    - :emulation_mode (String.t): Specify the emulation mode.
  ## Returns

  {:ok, %RasaApi.Model.ParseResult{}} on success
  {:error, info} on failure
  """
  @spec parse_model_message(Tesla.Env.client, RasaApi.Model.InlineObject.t, keyword()) :: {:ok, RasaApi.Model.ParseResult.t} | {:error, Tesla.Env.t}
  def parse_model_message(connection, inline_object, opts \\ []) do
    optional_params = %{
      emulation_mode: :query
    }
    %{}
    |> method(:post)
    |> url("/model/parse")
    |> add_param(:body, :body, inline_object)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %RasaApi.Model.ParseResult{}},
      { 400, %RasaApi.Model.Error{}},
      { 401, %RasaApi.Model.Error{}},
      { 403, %RasaApi.Model.Error{}},
      { 500, %RasaApi.Model.Error{}}
    ])
  end

  @doc """
  Predict an action on a temporary state
  Predicts the next action on the tracker state as it is posted to this endpoint. Rasa will create a temporary tracker from the provided events and will use it to predict an action. No messages will be sent and no action will be run.

  ## Parameters

  - connection (RasaApi.Connection): Connection to server
  - event ([Event]): 
  - opts (KeywordList): [optional] Optional parameters
    - :include_events (String.t): Specify which events of the tracker the response should contain.
  ## Returns

  {:ok, %RasaApi.Model.PredictResult{}} on success
  {:error, info} on failure
  """
  @spec predict_model_action(Tesla.Env.client, list(RasaApi.Model.Event.t), keyword()) :: {:ok, RasaApi.Model.PredictResult.t} | {:error, Tesla.Env.t}
  def predict_model_action(connection, event, opts \\ []) do
    optional_params = %{
      include_events: :query
    }
    %{}
    |> method(:post)
    |> url("/model/predict")
    |> add_param(:body, :body, event)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %RasaApi.Model.PredictResult{}},
      { 400, %RasaApi.Model.Error{}},
      { 401, %RasaApi.Model.Error{}},
      { 403, %RasaApi.Model.Error{}},
      { 409, %RasaApi.Model.Error{}},
      { 500, %RasaApi.Model.Error{}}
    ])
  end

  @doc """
  Replace the currently loaded model
  Updates the currently loaded model. First, tries to load the model from the local storage system. Secondly, tries to load the model from the provided model server configuration. Last, tries to load the model from the provided remote storage.

  ## Parameters

  - connection (RasaApi.Connection): Connection to server
  - model_request (ModelRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec replace_model(Tesla.Env.client, RasaApi.Model.ModelRequest.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def replace_model(connection, model_request, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/model")
    |> add_param(:body, :body, model_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 400, %RasaApi.Model.Error{}},
      { 401, %RasaApi.Model.Error{}},
      { 403, %RasaApi.Model.Error{}},
      { 500, %RasaApi.Model.Error{}}
    ])
  end

  @doc """
  Perform an intent evaluation
  Evaluates intents against the currently loaded Rasa model or the model specified in the query.

  ## Parameters

  - connection (RasaApi.Connection): Connection to server
  - body (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :model (String.t): Model that should be used for evaluation. If the parameter is set, the model will be fetched with the currently loaded configuration setup. However, the currently loaded model will not be updated. The state of the server will not change. If the parameter is not set, the currently loaded model will be used for the evaluation.
  ## Returns

  {:ok, %RasaApi.Model.EvaluationIntentsResult{}} on success
  {:error, info} on failure
  """
  @spec test_model_intent(Tesla.Env.client, String.t, keyword()) :: {:ok, RasaApi.Model.EvaluationIntentsResult.t} | {:error, Tesla.Env.t}
  def test_model_intent(connection, body, opts \\ []) do
    optional_params = %{
      model: :query
    }
    %{}
    |> method(:post)
    |> url("/model/test/intents")
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %RasaApi.Model.EvaluationIntentsResult{}},
      { 400, %RasaApi.Model.Error{}},
      { 401, %RasaApi.Model.Error{}},
      { 403, %RasaApi.Model.Error{}},
      { 409, %RasaApi.Model.Error{}},
      { 500, %RasaApi.Model.Error{}}
    ])
  end

  @doc """
  Evaluate stories
  Evaluates one or multiple stories against the currently loaded Rasa model.

  ## Parameters

  - connection (RasaApi.Connection): Connection to server
  - body (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :e2e (boolean()): Perform an end-to-end evaluation on the posted stories.
  ## Returns

  {:ok, %RasaApi.Model.EvaluationStoriesResult{}} on success
  {:error, info} on failure
  """
  @spec test_model_stories(Tesla.Env.client, String.t, keyword()) :: {:ok, RasaApi.Model.EvaluationStoriesResult.t} | {:error, Tesla.Env.t}
  def test_model_stories(connection, body, opts \\ []) do
    optional_params = %{
      e2e: :query
    }
    %{}
    |> method(:post)
    |> url("/model/test/stories")
    |> add_param(:body, :body, body)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %RasaApi.Model.EvaluationStoriesResult{}},
      { 400, %RasaApi.Model.Error{}},
      { 401, %RasaApi.Model.Error{}},
      { 403, %RasaApi.Model.Error{}},
      { 409, %RasaApi.Model.Error{}},
      { 500, %RasaApi.Model.Error{}}
    ])
  end

  @doc """
  Train a Rasa model
  Trains a new Rasa model. Depending on the data given only a dialogue model, only a NLU model, or a model combining a trained dialogue model with an NLU model will be trained. The new model is not loaded by default.

  ## Parameters

  - connection (RasaApi.Connection): Connection to server
  - training_request (TrainingRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %RasaApi.Model.String.t{}} on success
  {:error, info} on failure
  """
  @spec train_model(Tesla.Env.client, RasaApi.Model.TrainingRequest.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def train_model(connection, training_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/model/train")
    |> add_param(:body, :body, training_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false},
      { 400, %RasaApi.Model.Error{}},
      { 401, %RasaApi.Model.Error{}},
      { 403, %RasaApi.Model.Error{}},
      { 500, %RasaApi.Model.Error{}}
    ])
  end

  @doc """
  Unload the trained model
  Unloads the currently loaded trained model from the server.

  ## Parameters

  - connection (RasaApi.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec unload_model(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def unload_model(connection, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/model")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 204, false},
      { 401, %RasaApi.Model.Error{}},
      { 403, %RasaApi.Model.Error{}}
    ])
  end
end
