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

  def list_books
    if @books.empty?
      puts "\n"
      puts 'No books in the library'
      return
    end
    @books.each do |book|
      puts "Title : #{book.title} | Author : #{book.author}"
    end
    puts "\n"
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2) ? [Input a number] : '
    puts "\n"
    get_choice = lambda do
      choice = gets.chomp
      case choice
      when '1'
        create_student
      when '2'
        create_teacher
      else
        puts "\n"
        puts 'Please enter a valid number [1 or 2]'
        puts "\n"
        get_choice.call
      end
      puts "\n"
    end
    get_choice.call
  end

  def list_people
    if @people.empty?
      puts 'No person is registered in the library'
      return
    end
    @people.each do |person|
      puts "[#{person.class}] Name : #{person.name} | ID : #{person.id} | Age : #{person.age}"
      puts "\n"
    end
  end