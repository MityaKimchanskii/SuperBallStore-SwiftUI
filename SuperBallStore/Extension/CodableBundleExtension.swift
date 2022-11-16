//
//  CodableBundleExtension.swift
//  SuperBallStore
//
//  Created by Mitya Kim on 11/16/22.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else { fatalError("Filed to locate \(file) in bundle.") }
        guard let data = try? Data(contentsOf: url) else { fatalError("Filed to load \(file) from bundle.") }
        guard let decodedData = try? JSONDecoder().decode(T.self, from: data) else { fatalError("Filed to decode \(file) from bundle.") }
        return decodedData
    }
}
