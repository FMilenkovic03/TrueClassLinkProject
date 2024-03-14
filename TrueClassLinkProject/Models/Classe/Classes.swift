//
//  Classes.swift
//  Classes
//
//  Created by Justyna Warzecha on 11/03/2024.
//

import Foundation


class Classes: ObservableObject {

    @Published var name: String

    init(name: String) {
        self.name = name
    }
}

class ListeClasses: ObservableObject {

    @Published var classes: [Classes] = []

    func addClass(className: String) {
        let newClass = Classes(name: className)
        classes.append(newClass)
    }
}
