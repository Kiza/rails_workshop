# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.create([
	{ title: 'Class 1', description: '', date: 3.days.ago }, 
	{ title: 'Class 2', description: '', date: 2.days.ago }, 
	{ title: 'Class 3', description: '', date: 1.days.ago }, 
	{ title: 'Class 4', description: '', date: Time.now }, 
	{ title: 'Class 5', description: '', date: 1.days.from_now }, 
	{ title: 'Class 6', description: '', date: 2.days.from_now }, 
	{ title: 'Class 7', description: '', date: 3.days.from_now }])

User.create([
	{ name: 'Apple', email: 'apple@gmail.com', password: '123456' }, 
	{ name: 'Pear', email: 'pear@gmail.com', password: '123456' }, 
	{ name: 'Melon', email: 'melon@gmail.com', password: '123456' }, 
	{ name: 'Grape', email: 'grape@gmail.com', password: '123456' }
	])

Attendance.create([
	{user_id: 1, event_id: 1, user_type: 'ADMIN', has_attended: true}, 
	{user_id: 1, event_id: 2, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 1, event_id: 3, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 1, event_id: 4, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 1, event_id: 5, user_type: 'ADMIN', has_attended: false}, 
	{user_id: 1, event_id: 6, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 1, event_id: 7, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 2, event_id: 1, user_type: 'STUDENT', has_attended: true}, 
	{user_id: 2, event_id: 2, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 2, event_id: 3, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 2, event_id: 4, user_type: 'ADMIN', has_attended: false}, 
	{user_id: 2, event_id: 5, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 3, event_id: 1, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 3, event_id: 2, user_type: 'ADMIN', has_attended: false}, 
	{user_id: 3, event_id: 3, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 3, event_id: 4, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 3, event_id: 5, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 3, event_id: 6, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 3, event_id: 7, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 4, event_id: 1, user_type: 'STUDENT', has_attended: true}, 
	{user_id: 4, event_id: 2, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 4, event_id: 3, user_type: 'ADMIN', has_attended: false}, 
	{user_id: 4, event_id: 4, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 4, event_id: 5, user_type: 'STUDENT', has_attended: false}, 
	{user_id: 4, event_id: 6, user_type: 'ADMIN', has_attended: false}, 
	{user_id: 4, event_id: 7, user_type: 'STUDENT', has_attended: false}
	])
