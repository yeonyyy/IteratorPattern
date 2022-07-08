//
//  Iterator.swift
//  IteratorPattern
//
//  Created by rayeon lee on 2022/07/07.
//

import Foundation

protocol Iterator {
    associatedtype Value
    
    func hasNext() -> Bool
    func next() -> Value
}

class BookShelfIterator : Iterator {
  
    private var bookShelf : BookShelf
    private var index : Int = 0
    
    typealias Value = Book
    
    init(bookShelf : BookShelf) {
        self.bookShelf = bookShelf
    }
    
    func hasNext() -> Bool {
        return index < bookShelf.getLength()
    }
    
    func next() -> Book {
        var book : Book
        book = bookShelf.getBook(index: index)
        index += 1
        return book
    }
}
