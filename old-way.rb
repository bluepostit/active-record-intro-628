DB = SQLite3::Database.new('db/database.sqlite3')

class Post
  def initialize(attr = {})
    @id = attr[:id]
    @title = attr[:title]
    @content = attr[:content]
  end

  def save
    DB.execute('INSERT INTO posts (title, content) VALUES (?, ?)', @title, @content)
  end
end

my_post = Post.new(title: 'Hello world', content: "Have a good day")
my_post.save
