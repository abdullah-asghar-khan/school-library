require 'date'
require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'

# rubocop:disable Metrics/MethodLength, Metrics/ClassLength
class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def create_book
    print 'Title : '
    title = gets.chomp
    print 'Author : '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    puts "\n"
    puts 'Book successfully created'
    puts "\n"
  end