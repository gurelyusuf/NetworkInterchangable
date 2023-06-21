//
//  NetworkService.swift
//  NetworkInterchangable
//
//  Created by GUREL on 22.06.2023.
//

import Foundation

protocol NetworkService {
    func download(_ resource : String) async throws -> [User]
    var type : String { get }

}
