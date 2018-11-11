# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Service.destroy_all
behav = Service.create(name:"Behavior Modification Program")
speech = Service.create(name: "Speech language pathology")
occup = Service.create(name: "Occupational Therapy")


Expert.destroy_all 
nora   = Expert.create(name: "Nora Alsubaie", major: "Early Intervention Specialist",bio: "Experienced Specialist with a demonstrated history of working with toddlers with disabilities and their families, Honored to be part of the first class to major in Early Intervention in the Middle East, I've conducted many workshops such as “Fujita program for early intervention” and ”Towards a Better Behavior, With MyChild ” ", rate: 5, service_id: behav.id, image: "" ,email: "nour3_@hotmail.com")
monera = Expert.create(name: "Monera Abdulrahman", major: "Speech language Pathologist",bio: " I've developed a passion for speech language pathology. I continued my intrest in this field till i had the opportunity to major in it.  ", rate: 5, service_id: speech.id, image: "",email: "mon.tadax20@hotmail.com" )
waleed = Expert.create(name: "Waleed Raed", major: "Speech language Pathologist",bio: " Iam working with people of all ages, from babies to adults. I treat many types of communication and swallowing problems.   ", rate: 4, service_id: speech.id, image: "",email: "s150162624@seu.edu.sa" )

wasaif = Expert.create(name: "Sara AlOraini", major: " Autism and Emotional Behavioral Disorders Specialist",bio: " Three years experience of working in the hospital & health care industry .  ", rate: 5, service_id: behav.id, image: "", email: "sumeex20@hotmail.com" )


