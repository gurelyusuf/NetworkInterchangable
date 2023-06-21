//
//  LocalService.swift
//  NetworkInterchangable
//
//  Created by GUREL on 22.06.2023.
//

import Foundation

class LocalService {
    
    var type : String = "Localservice"

    func download(_ resource : String) async throws -> [User] {
        guard let path = Bundle.main.path(forResource: resource, ofType: "json") else {
            fatalError("resource not found")
        }
        
        let data = try Data(contentsOf: URL(filePath: path))
        
        return try JSONDecoder().decode([User].self, from: data)
    }
}
