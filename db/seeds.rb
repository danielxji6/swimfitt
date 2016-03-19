User.destroy_all
Workout.destroy_all


user1_data = {
	email: "t1@t.com",
	password: "123",
	full_name: "Test1",
	weight: 160,
	age: 25,
	gender: 'Male'
}
user2_data = {
	email: "t2@t.com",
	password: "123",
	full_name: "Test2",
	weight: 140,
	age: 24,
	gender: 'Female'
}
user1 = User.create(user1_data)
user2 = User.create(user2_data)

workout1_data = {
	name: 'Beginner Circuit',
	level: 'beginner',
	diff: 2,
	s1_type: 'freestyle',
	s1_dis: 200,
	s2_type: 'back',
	s2_dis: 100,
	s3_type: 'breast',
	s3_dis: 100,
	s4_type: 'freestyle',
	s4_dis: 200,
	s5_type: 'back',
	s5_dis: 100,
	s6_type: 'breast',
	s6_dis: 100
}

workout2_data = {
	name: 'Intro Intermediate Circuit',
	level: 'intermediate',
	diff: 1,
	s1_type: 'freestyle',
	s1_dis: 100,
	s2_type: 'back',
	s2_dis: 200,
	s3_type: 'breast',
	s3_dis: 200,
	s4_type: 'butterfly',
	s4_dis: 100,
	s5_type: 'freestyle',
	s5_dis: 100,
}

workout3_data = {
	name: 'Intro Expert Circuit',
	level: 'advanced',
	diff: 1,
	s1_type: 'freestyle',
	s1_dis: 200,
	s2_type: 'back',
	s2_dis: 200,
	s3_type: 'breast',
	s3_dis: 200,
	s4_type: 'butterfly',
	s4_dis: 100,
	s5_type: 'freestyle',
	s5_dis: 200,
	s5_type: 'butterfly',
	s5_dis: 100
}


workout1 = Workout.create(workout1_data)
workout2 = Workout.create(workout2_data)
workout3 = Workout.create(workout3_data)
