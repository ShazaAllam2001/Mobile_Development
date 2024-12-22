class Book {
  final int _bookID;
  final String _title;
  bool _borrowed;

  Book(this._bookID, this._title, this._borrowed);

  void displayInfo() {
    print("BookID: $_bookID");
    print("Title: $_title");
    print("Borrowed: $_borrowed");
  }
}

class User {
  final int _userID;
  final String _name;

  User(this._userID, this._name);

  void displayInfo() {
    print("UserID: $_userID");
    print("Name: $_name");
  }
}

class LibrarySystem {
  List<User> _users;
  List<Book> _books;

  LibrarySystem(this._users, this._books);

  // Books Methods
  void addBook(int id, String title) {
    _books.add(Book(id, title, false));
    print("Book Added");
  }

  void borrowBook(int id) {
    for (Book book in _books) {
      if (book._bookID == id) {
        book._borrowed = true;
        print("Borrowed Book");
      }
    }
  }

  void returnBook(int id) {
    for (Book book in _books) {
      if (book._bookID == id) {
        book._borrowed = false;
        print("Returned Book");
      }
    }
  }

  // Users Methods
  void addUser(int id, String name) {
    _users.add(User(id, name));
    print("User Added");
  }

  void removeUser(int id) {
    for (int i=0; i<_users.length; i++) {
      if (_users[i]._userID == id) {
        _users.removeAt(i);
        print("User Removed");
        break;
      }
    }
  }

  void displayInfo() {
    print("\nUsers:");
    for (User user in _users) {
      user.displayInfo();
    }

    print("\nBooks:");
    for (Book book in _books) {
      book.displayInfo();
    }
  }
}


void main(List<String> arguments) {
  LibrarySystem system = LibrarySystem([], []);
  system.addBook(1, "abc");
  system.addBook(2, "efg");
  system.addUser(12, "Omar");
  system.addUser(13, "Sara");
  system.borrowBook(1);
  system.displayInfo();
  system.returnBook(1);
  system.removeUser(12);
  system.displayInfo();
}