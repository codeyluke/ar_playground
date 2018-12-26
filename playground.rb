# if you have not installed the needed gems, please do the following:
# gem install sqlite3
# gem install activerecord

require "sqlite3"
require "active_record"

# this line configures ActiveRecord to connect to a sqlite3 database in the same folder named "students.sqlite3"
ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => "./students.sqlite3")

# This sets up ActiveRecord to use Ruby OOP with SQL data
class Student < ActiveRecord::Base
end

####################################
# Write your test code here

# 1. Create a new student using new and save

# student = Student.new(name:"Ronald Wesley", email: "ronald@example.com", age: 29, gender: "male")
# student.save
# p student

# =============================================
# 2. Create a new student using create

# student = Student.create(name: "Luke Watt", email: "luke@example.com", age: 23)
# p student

# ==============================================
# 3. Select all students
# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?

# pp Student.all

# Why can't you do Student.name or Student.email?
# ===============================================
# 4. Select the first student
# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?

# p Student.first
# ===============================================
# 5. Select the last student
# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?

# p Student.last

# ================================================
# 6. Use each to iterate through the #<ActiveRecord::Relation> object to display the name of each student

# Student.all.each do |student|
#     puts student.name
# end

# =================================================
# 7. Find student by the name Dr. Lois Pfeff using where.
# pay attention to the object that is returned to you, is it the Student object or Active Record relation object?

# Student.all.each do |student|
#     puts student.id
#     puts student.name
#     puts student.email
#     puts student.age
# end


# What will the following return to you? (remember to comment out the code!)
# p student.id
# p student.name
# p student.email
# p student.age

# ==================================================

# 8. Find student by name using find_by
# pay attention to the object that is returned to you, is it the Student object or Active Record relation object?

# student = Student.find_by(name: "Dr. Lois Pfeff")
# p student

# What will the following return to you?
# p student.id
# p student.name
# p student.email
# p student.age

# Do research on the difference between "where" and "find_by".
# where returns active records relations where the find_by returns the object

# student = Student.where(name: "Dr. Lois Pfeff")
# p student
# =====================================================

# 9. Find the student with id = 7 using find and find_by
# pay attention to the object that is returned to you, is it the User object or Active Record relation object?

# p Student.find(7)
# p Student.find_by(id:7)

# ======================================================
# 10. Update information for student with id = 5 using student.email and save. Change the student's email to elsie@example.com

# student = Student.find(5)
# p student
# student.email = "elsie@example.com"
# student.save
# p student

# ======================================================
# 11. Now use update to update this student's age to 21.

# student = Student.find(5)
# student.update(age:21)
# p student

# ======================================================
# 12. Delete student with id 21 using delete

# Delete student with id 21 using delete

# student = Student.find(21)
# student.delete
# p Student.all.count 

# ======================================================
# 13. Delete student with id 22 using destroy

# student= Student.find(22)
# student.destroy
# p Student.all.count
