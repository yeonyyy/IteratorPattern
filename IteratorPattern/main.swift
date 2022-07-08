//
//  main.swift
//  IteratorPattern
//
//  Created by rayeon lee on 2022/07/07.
//

import Foundation

var book1 : Book = Book(name: "Bilbe")
var book2 : Book = Book(name: "Cinderella")
var book3 : Book = Book(name: "Daddy-Long-Legs")
var book4 : Book = Book(name: "Daddy-Long-Legs2")
var book5 : Book = Book(name: "Daddy-Long-Legs3")
var book6 : Book = Book(name: "Daddy-Long-Legs4")
var book7 : Book = Book(name: "Daddy-Long-Legs5")
var book8 : Book = Book(name: "Daddy-Long-Legs6")
var book9 : Book = Book(name: "Daddy-Long-Legs7")
var book10 : Book = Book(name: "Daddy-Long-Legs8")
var book11 : Book = Book(name: "Daddy-Long-Legs9")

/*
 swift에서 제공하는 iterator가 있다.
 makeIterator을 쓰면 된다~
 */
var books = [book1, book2,book3,book4,book5,book6,book7,book8,book9, book10]
var bookIterater = books.makeIterator()
while let book = bookIterater.next() {
    print(book)
}

/*
 원리 파악을 위해 직접 만들어 보자!!
 */
var bookShelf : BookShelf = BookShelf(size: 10)

bookShelf.appendBook(book: book1)
bookShelf.appendBook(book: book2)
bookShelf.appendBook(book: book3)
bookShelf.appendBook(book: book4)
bookShelf.appendBook(book: book5)
bookShelf.appendBook(book: book6)
bookShelf.appendBook(book: book7)
bookShelf.appendBook(book: book8)
bookShelf.appendBook(book: book9)
bookShelf.appendBook(book: book10)
bookShelf.appendBook(book: book11)


print("현재 꽂혀있는 책 권수 : \(bookShelf.getLength())")

var it = bookShelf.createIterator()
while (it.hasNext()) {
    let book = it.next()
    print(book.name)
}
