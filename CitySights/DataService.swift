import Foundation

struct DataService {
    static let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func businessSearch() async -> [Business] {
        guard let apiKey = DataService.apiKey else {
            return []
        }
        
        guard let url = URL(string: "https://api.yelp.com/v3/businesses/search?latitude=35.665517&longitude=139.770398&categories=restaurants&limit=10") else {
            return []
        }
        
        var request = URLRequest(url: url)
        request.addValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "accept")
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            let jsonDecoder = JSONDecoder()
            let businessSearch = try jsonDecoder.decode(BusinessSearch.self, from: data)
            return businessSearch.businesses
        } catch {
            print(error)
            return []
        }
    }
}
