//
//  ElectionResultService.swift
//  ElectionCounter
//
//  Created by Bruno Pastre on 01.02.24.
//

import Foundation

// This URL is not part of the interview
private let endpointUrl = URL(string: "https://mock-json.com/my-mock")!

class ElectionResult {
    var stringResult: String?
    init(_ dictionary: [String: Any]) {
        stringResult = dictionary["votes"] as? String
    }
}

class ElectionResultService {
    func fetchElectionResults(completion: @escaping (ElectionResult?, Error?) -> Void) {
        URLSession.shared.dataTask(with: .init(url: endpointUrl)) { data, response, error in
            if let error {
                completion(nil, error)
                return
            }
            guard let data else { return }
            let dictionary = try! JSONSerialization.jsonObject(with: data)
            completion(ElectionResult(dictionary as! [String : Any]), nil)
        }.resume()
    }
}
