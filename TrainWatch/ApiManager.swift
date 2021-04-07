//
//  ApiManager.swift
//  TrainWatch
//
//  Created by Zander Work on 4/5/21.
//

import Foundation

func fetchLines(completionHandler: @escaping ([Line]) -> Void) {
    let config = URLSessionConfiguration.default
    config.httpAdditionalHeaders = [ "api_key": Constants.Api.apiKey ]
    
    let session = URLSession(configuration: config)
    
    let url = URL(string: Constants.Api.baseUrl + "/Rail.svc/json/jLines")!
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
        
        do {
            if let data = data {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .custom { keys in
                    var key = keys.last!.stringValue
                    key.lowercaseFirstLetter()
                    return AnyKey(stringValue: key)!
                }
                print(String(data: data, encoding: String.Encoding.utf8) ?? "")
                let lines = try decoder.decode(Lines.self, from: data)
                completionHandler(lines.lines)
            } else {
                print("error")
            }
        } catch {
            print("broke")
            print(error)
        }
        
    })
    task.resume()
}
