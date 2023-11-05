

import Foundation


public protocol NetworkKit {
func get<T:Decodable>(url:URL) async throws -> T
}



public class  NetworkKitImp : NetworkKit {
    public init() {}
    
    public func get<T:Decodable>(url:URL) async throws -> T {
        let (data,_) = try await URLSession.shared.data(from: url)
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
}
