//
//  Network.swift
//  Gallery
//
//  Created by Alaa Gawish on 17/07/2025.
//

import Foundation
import Alamofire

class Network: RemoteSourceProtocol {
    func getImages(handler: @escaping ([Images]?) -> Void) {
        
        AF.request(
            "https://api.unsplash.com/photos/?client_id=xgWaa73F8EvCKqNQNyiEYmst6BeEWPCFfY9An-54HJo",
            method: .get)
        .validate()
        .responseDecodable(of: [Images].self) { response in
            switch response.result {
            case .success(let data):
                print("Done")
                handler(data)
            case .failure(let error):
                print("Error: \(error)")
                handler(nil)
            }
        }
    }
}
