json.array!(@learnings) do |learning|
  json.extract! learning, :id, :learner_name, :what_was_learned
  json.url learning_url(learning, format: :json)
end
