json.array!(@workouts) do |workout|
  json.extract! workout, :id, :name, :level, :diff, :start_time, :end_time, :s1_type, :s1_dis, :s2_type, :s2_dis, :s3_type, :s3_dis, :s4_type, :s4_dis, :s5_type, :s5_dis, :s6_type, :s6_dis
  json.url workout_url(workout, format: :json)
end
