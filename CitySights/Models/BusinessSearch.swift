import Foundation

struct BusinessSearch: Decodable {
    var businesses = [Business]()
    var region: Region
    var total = 0
}

struct Business: Decodable, Identifiable {
    var id: String?
    var alias: String?
    var categories: [Category]
    var coordinates: Coordinate?
    var display_phone: String?
    var distance: Double?
    var image_url: String?
    var is_closed: Bool?
    var location: Location?
    var name: String?
    var phyone: String?
    var price: String?
    var rating: Double?
    var review_count: Int?
    var url: String?
}

struct Category: Decodable {
    var alias: String?
    var title: String?
}

struct Location: Decodable {
    var address1: String?
    var address2: String?
    var address3: String?
    var city: String?
    var country: String?
    var display_address: [String]?
    var state: String?
    var zip_code: String?
}

struct Region: Decodable {
    var center: Coordinate
}

struct Coordinate: Decodable {
    var latitude: Double
    var longitude: Double?
}
