class Book {
  String title;
  String author;
  String isbn;
  bool isAvailable;
  Book(this.title, this.author, this.isbn, {this.isAvailable = true});

  @override
  String toString() {
    return '$title, $author, $isbn';
  }
}

class LibraryMember {
  String name;
  String memberId;
  List<Book> borrowedBooks = [];
  LibraryMember(this.name, this.memberId);

  void borrowBook(book) {
    if (book.isAvailable) {
      borrowedBooks.add(book);
    } else {
      print('Sorry the book : ${book.title} is not available');
    }
  }
  // void returnBook (book){

  // }
}

class Library {
  List<Book> books = [];
  List<LibraryMember> members = [];
  Library();
}

void main() {
  Book book = Book('The Great Gatsgy', 'F. Scott Fitzgerald', '123456', isAvailable: false);
  print(book);
  LibraryMember member = LibraryMember('The Great Gatsgy', '8743763');
  member.borrowBook(book);
}
