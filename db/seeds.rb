# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Service.destroy_all
behav = Service.create(name:"Behavior Modification Program", about: "Behavior modification is used to change behavior or reduce maladaptive behavior by means of techniques that include negative and positive reinforcement, imposing environmental limitations, goal setting, and conditioning.")
speech = Service.create(name: "Speech language pathology", about: "Speech-language pathologists (SLPs) work to prevent, assess, diagnose, and treat speech, language, social communication, cognitive-communication, and swallowing disorders in children and adults.")
occup = Service.create(name: "Occupational Therapy", about: "Occupational therapy is the only profession that helps people across the lifespan to do the things they want and need to do through the therapeutic use of daily activities (occupations). Occupational therapy practitioners enable people of all ages to live life to its fullest by helping them promote health, and prevent—or live better with—injury, illness, or disability.")


Expert.destroy_all 
nora   = Expert.create(name: "Nora Alsubaie", major: "Early Intervention Specialist",bio: "Experienced Specialist with a demonstrated history of working with toddlers with disabilities and their families, Honored to be part of the first class to major in Early Intervention in the Middle East, I've conducted many workshops such as “Fujita program for early intervention” and ”Towards a Better Behavior, With MyChild ” ", rate: 5, service_id: behav.id, image: "" )
monera = Expert.create(name: "Monera AlAbdullatif", major: "Speech language Pathologist",bio: " I've developed a passion for speech language pathology. I continued my intrest in this field till i had the opportunity to major in it.  ", rate: 5, service_id: speech.id, image: "" )
waleed = Expert.create(name: "Waleed Raed", major: "Speech language Pathologist",bio: " Iam working with people of all ages, from babies to adults. I treat many types of communication and swallowing problems.   ", rate: 4, service_id: speech.id, image: "" )
wasaif = Expert.create(name: "Sara AlOraini", major: " Autism and Emotional Behavioral Disorders Specialist",bio: " Three years experience of working in the hospital & health care industry .  ", rate: 5, service_id: behav.id, image: "" )


