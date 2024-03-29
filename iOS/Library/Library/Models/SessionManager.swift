//
//  SessionManager.swift
//  Library
//
//  Created by Kryg Tomasz on 17.01.2018.
//  Copyright © 2018 Kryg Tomek. All rights reserved.
//

import Foundation

enum YearSearchType {
    case less
    case equal
    case greater
}

class SessionManager {
    
    private init() {
        searchedBook = Book()
        dictionaryTypes = DictionaryTypes()
    }
    
    static let shared = SessionManager()
    
    var dataDownloaded: Bool = false
    var searchedBook: Book!
    var yearSearchType: YearSearchType = .equal
    var mainCategories: [MainCategory] = []
    var dictionaryTypes: DictionaryTypes!
    
//    func getAllCategories() -> [Category] {
//        var allCategories: [Category] = []
//        for mainCategory in mainCategories {
//            guard let category = mainCategory.category else { continue }
//            allCategories.append(category)
//            for subcategory in mainCategory.subcategories {
//                allCategories.append(subcategory)
//            }
//        }
//        return allCategories
//    }
    
}
