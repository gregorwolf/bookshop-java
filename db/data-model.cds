namespace my.bookshop;
using { User } from '@sap/cds/common';

entity Books {
  key ID : Integer;
  title  : String;
  author : Association to Authors;
  chapters : Composition of many Chapters on chapters.book = $self;
  stock  : Integer;
}

entity Chapters {
    key ID : Integer;
    book : Association to Books;
    number : Integer;
    name    : String;
}

entity Authors {
  key ID : Integer;
  name   : String;
  books  : Association to many Books on books.author = $self;
}

entity Orders {
  key ID : UUID;
  book   : Association to Books;
  buyer  : User;
  date   : DateTime;
  amount : Integer;
}
