json.array!(@strokes) do |stroke|
  json.extract! stroke, :id, :workout_id, :type, :laps, :calories
  json.url stroke_url(stroke, format: :json)
end
