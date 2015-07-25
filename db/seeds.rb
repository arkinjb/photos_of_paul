require 'bundler/setup'
require 'pry'
require "pg"
require "active_record"

require_relative 'connection'
require_relative '../models/member'
require_relative '../models/photo'
require_relative '../models/comment'

Member.destroy_all
Photo.destroy_all
Comment.destroy_all

jared = Member.create(first_name: "Jared", last_name: "Arkin", age: 32, gender: "M" )
bob = Member.create(first_name: "Bob", last_name: "Smith", age: 25, gender: "M" )
joe = Member.create(first_name: "Joe", last_name: "Rogers", age: 29, gender: "M" )
dylan = Member.create(first_name: "Dylan", last_name: "Beekler", age: 24, gender: "F" )

Photo.create(title: "Paul Rudd", photo_url: "../images/paul-rudd.jpg", member_id: jared.id)
Photo.create(title: "Random Twitter Paul", photo_url: "../images/paul-twitter.png", member_id: jared.id)
Photo.create(title: "Chris Paul", photo_url: "../images/chris-paul.jpg", member_id: dylan.id)
Photo.create(title: "Paul Bearer", photo_url: "../images/paul-bearer.jpg", member_id: bob.id)
Photo.create(title: "Paul George", photo_url: "../images/paul-george.jpg", member_id: dylan.id)
Photo.create(title: "Paul Giamatti", photo_url: "../images/paul-giamatti.jpg", member_id: joe.id)
Photo.create(title: "Paul Hogan", photo_url: "../images/paul-hogan.jpg", member_id: joe.id)
Photo.create(title: "Paul Phariss", photo_url: "../images/paul-phariss.jpg", member_id: joe.id)
Photo.create(title: "Paul Pierce", photo_url: "../images/paul-pierce.jpg", member_id: jared.id)
Photo.create(title: "Screaming Paul Rabil", photo_url: "../images/paul-rabil.jpg", member_id: bob.id)
Photo.create(title: "Professor Paul", photo_url: "../images/professor-paul.jpg", member_id: bob.id)
