# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
services =  Service.create([{ title: "Замена масла", price: 500, category_id: Category.first.id },
    { title: "Замена двигателя", price: 20000 , category_id: Category.first.id}, 
    { title: "Капитальный ремонт ", price: 1000, category_id: Category.first.id },
    { title: "Химчистка", price: 1000, category_id: Category.first.id },
    { title: "Замена шаровой", price: 500, category_id: Category.first.id }, 
    { title: "Промывкв двигателя", price: 1700 , category_id: Category.first.id},
    { title: "Замена сцепления", price: 3000 , category_id: Category.first.id},
    { title: "Вырезка катализатора", price: 0 , category_id: Category.first.id},
    { title: "Замена салона", price: 1800 , category_id: Category.first.id},
    { title: "Замена машины", price: 5000000, category_id: Category.first.id }, 
    { title: "Замена кпп", price: 2800 , category_id: Category.first.id},
    { title: "Замена рулевой рейки", price: 3000 , category_id: Category.first.id},
    { title: "Замена тормозных колодок", price: 3000 , category_id: Category.first.id}])
