//
//  ApiManager.swift
//  TrainWatch
//
//  Created by Zander Work on 4/5/21.
//

import Foundation

struct ApiManager {
    private static func jsonDecoderFactory() -> JSONDecoder {
        let decoder = JSONDecoder()
        
        decoder.keyDecodingStrategy = .custom { keys in
            var key = keys.last!.stringValue
            key.lowercaseFirstLetter()
            return AnyKey(stringValue: key)!
        }
        
        return decoder
    }
    
    private static func makeApiCall(route: String, completionHandler: @escaping (Data) -> Void) {
        let config = URLSessionConfiguration.default
        config.httpAdditionalHeaders = [ "api_key": Constants.Api.apiKey ]
        
        let session = URLSession(configuration: config)
        
        let url = URL(string: Constants.Api.baseUrl + route)!
        let task = session.dataTask(with: url, completionHandler: { (data, res, error) in
            if let error = error {
                print("failed to get lines: \(error)")
                return
            }
            
            guard let httpResponse = res as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                print("Error with the response, unexpected status code: \(res!)")
                return
            }
            
            if let data = data {
                completionHandler(data)
            } else {
                print("Error getting HTTP data")
            }
            
        })
        task.resume()
    }
    
    public static func fetchLines(completionHandler: @escaping (Lines) -> Void) {
        makeApiCall(route: "/Rail.svc/json/jLines") { data in
            let decoder = jsonDecoderFactory()
            do {
                let lines = try decoder.decode(Lines.self, from: data)
                completionHandler(lines)
            } catch {
                print("Error decoding jLines return")
                print(error)
            }
        }
    }
    
    public static func fetchStations(completionHandler: @escaping (Stations) -> Void) {
        makeApiCall(route: "/Rail.svc/json/jStations") { data in
            let decoder = jsonDecoderFactory()
            do {
                let lines = try decoder.decode(Stations.self, from: data)
                completionHandler(lines)
            } catch {
                print("Error decoding jStations return")
                print(error)
            }
        }
    }
}
