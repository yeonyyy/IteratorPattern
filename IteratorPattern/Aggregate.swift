//
//  Aggregate.swift
//  IteratorPattern
//
//  Created by rayeon lee on 2022/07/07.
//

import Foundation

struct Book {
    var name : String
}

protocol Aggregate {
    associatedtype iterator
    func createIterator() -> iterator
}

class BookShelf : Aggregate {
    
    typealias iterator = BookShelfIterator
    private var books : [Book?]
    private var last = 0
    
    init(size:Int) {
        self.books = [Book?](repeating: nil, count: size)
    }
  
    func getBook(index:Int) -> Book{
        return books[index]!
    }
    
    func getLength() -> Int {
        return last
    }
    
    func appendBook(book : Book){
        if (last < books.count) {
            self.books[last] = book
            last += 1
        }else {
            print("책꽂이가 꽉 찼습니다!")
        }
    }
    
    func createIterator() -> iterator {
        return iterator(bookShelf: self)
    }
}
