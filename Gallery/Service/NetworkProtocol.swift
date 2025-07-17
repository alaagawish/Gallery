//
//  NetworkProtocol.swift
//  Gallery
//
//  Created by Alaa Gawish on 17/07/2025.
//

import Foundation

protocol RemoteSourceProtocol {
    func getImages(handler: @escaping ([Images]?) -> Void)
}

