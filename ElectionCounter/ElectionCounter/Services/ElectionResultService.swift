import Foundation

// This URL is not part of the interview. Feel free to mock if required
private let endpointUrl = URL(string: "https://mock-json.com/my-mock")!
/*
Sample response from the API:
{
    "votes": "Ronaldo Messi Mbappe Ronaldo"
}
*/
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
