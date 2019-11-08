using my.bookshop from '../db/data-model';
service CatalogService {
  entity Books    @readonly as projection on bookshop.Books;
  entity Chapters as projection on bookshop.Chapters;
  entity Authors  as projection on bookshop.Authors;
  entity Orders   @insertonly as projection on bookshop.Orders;
}
