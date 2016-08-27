# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{name: 'Computer Science & Engineering'}, {name: 'Machenical Engineering'}, {name: 'Electrical Engineering'}, {name: 'Electronics & Communications'}, {name: 'Civil Engineering'}])

subjects = Subject.create([{name: 'Cloud Computing', category_id: 1, yt_link: 'https://www.youtube.com/embed/ae_DKNwK_ms', slug: 'cloud-computing'}, {name: 'Compiler Design', category_id: 1, yt_link: 'https://www.youtube.com/embed/_QJhHl8WkiQ', slug: 'compiler-design'}, {name: 'Operating System', category_id: 1, yt_link: 'https://www.youtube.com/embed/5AjReRMoG3Y', slug: 'operating-system'}, {name: 'Web Technology', category_id: 1, yt_link: 'https://www.youtube.com/embed/XHnrw-ANx40', slug: 'web-technology'}, {name: 'Database Management System', category_id: 1, yt_link: 'https://www.youtube.com/embed/kp3VmxWjzs8', slug: 'database-management-system'}, {name: 'Theory of Computation', category_id: 1, yt_link: 'https://www.youtube.com/embed/pM0w3ue-sjU', slug: 'theory-of-computation'}, {name: 'Discrete Mathemics', category_id: 1, yt_link: 'https://www.youtube.com/embed/paRt4R71d8s', slug: 'discrete-mathemics'}, {name: 'Data Structures and Algorithms', category_id: 1, yt_link: 'https://www.youtube.com/embed/wC2wizp7nUU', slug: 'data-structures-and-algorithms'}])