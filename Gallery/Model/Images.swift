//
//  Images.swift
//  Gallery
//
//  Created by Alaa Gawish on 17/07/2025.
//

import Foundation

struct Images: Codable {
    
    let id: String?
    let slug: String?
    let alternativeSlugs: AlternativeSlugs?
    let createdAt: String?
    let updatedAt: String?
    //    let promotedAt: Any?
    let width: Int?
    let height: Int?
    let color: String?
    let blurHash: String?
    let description: String?
    let altDescription: String?
    //    let breadcrumbs: [Any]?
    let urls: Urls?
    let links: Links?
    let likes: Int?
    let likedByUser: Bool?
    //    let currentUserCollections: [Any]?
    let sponsorship: Sponsorship?
    let topicSubmissions: TopicSubmissions?
    let assetType: String?
    let user: User
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case slug = "slug"
        case alternativeSlugs = "alternative_slugs"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        //        case promotedAt = "promoted_at"
        case width = "width"
        case height = "height"
        case color = "color"
        case blurHash = "blur_hash"
        case description = "description"
        case altDescription = "alt_description"
        //        case breadcrumbs = "breadcrumbs"
        case urls = "urls"
        case links = "links"
        case likes = "likes"
        case likedByUser = "liked_by_user"
        //        case currentUserCollections = "current_user_collections"
        case sponsorship = "sponsorship"
        case topicSubmissions = "topic_submissions"
        case assetType = "asset_type"
        case user = "user"
    }
    
}

struct AlternativeSlugs: Codable {
    
    let en: String?
    let es: String?
    let ja: String?
    let fr: String?
    let it: String?
    let ko: String?
    let de: String?
    let pt: String?
    let id: String?
    
    private enum CodingKeys: String, CodingKey {
        case en = "en"
        case es = "es"
        case ja = "ja"
        case fr = "fr"
        case it = "it"
        case ko = "ko"
        case de = "de"
        case pt = "pt"
        case id = "id"
    }
    
}


struct Urls: Codable {
    
    let raw: String?
    let full: String?
    let regular: String?
    let small: String?
    let thumb: String?
    let smallS3: String?
    
    private enum CodingKeys: String, CodingKey {
        case raw = "raw"
        case full = "full"
        case regular = "regular"
        case small = "small"
        case thumb = "thumb"
        case smallS3 = "small_s3"
    }
    
}


struct Links: Codable {
    
    let selfField: String?
    let html: String?
    let download: String?
    let downloadLocation: String?
    
    private enum CodingKeys: String, CodingKey {
        case selfField = "self"
        case html = "html"
        case download = "download"
        case downloadLocation = "download_location"
    }
    
}

struct TopicSubmissions: Codable {
    
}

struct User: Codable {
    
    let id: String?
    let updatedAt: String?
    let username: String?
    let name: String?
    let firstName: String?
    let lastName: String?
    let twitterUsername: String?
    let portfolioUrl: String?
    let bio: String?
    let location: String?
    let links: Links?
    let profileImage: ProfileImage?
    let instagramUsername: String?
    let totalCollections: Int?
    let totalLikes: Int?
    let totalPhotos: Int?
    let totalPromotedPhotos: Int?
    let totalIllustrations: Int?
    let totalPromotedIllustrations: Int?
    let acceptedTos: Bool?
    let forHire: Bool?
    let social: Social?
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case updatedAt = "updated_at"
        case username = "username"
        case name = "name"
        case firstName = "first_name"
        case lastName = "last_name"
        case twitterUsername = "twitter_username"
        case portfolioUrl = "portfolio_url"
        case bio = "bio"
        case location = "location"
        case links = "links"
        case profileImage = "profile_image"
        case instagramUsername = "instagram_username"
        case totalCollections = "total_collections"
        case totalLikes = "total_likes"
        case totalPhotos = "total_photos"
        case totalPromotedPhotos = "total_promoted_photos"
        case totalIllustrations = "total_illustrations"
        case totalPromotedIllustrations = "total_promoted_illustrations"
        case acceptedTos = "accepted_tos"
        case forHire = "for_hire"
        case social = "social"
    }
    
}
struct Social: Codable {
    
    let instagramUsername: String?
    let portfolioUrl: String?
    let twitterUsername: String?
    let paypalEmail: String?
    
    private enum CodingKeys: String, CodingKey {
        case instagramUsername = "instagram_username"
        case portfolioUrl = "portfolio_url"
        case twitterUsername = "twitter_username"
        case paypalEmail = "paypal_email"
    }
    
}
struct ProfileImage: Codable {
    
    let small: String?
    let medium: String?
    let large: String?
    
    private enum CodingKeys: String, CodingKey {
        case small = "small"
        case medium = "medium"
        case large = "large"
    }
    
}
struct Sponsorship: Codable {
    
    let impressionUrls: [String]?
    let tagline: String?
    let taglineUrl: String?
    let sponsor: User?
    
    private enum CodingKeys: String, CodingKey {
        case impressionUrls = "impression_urls"
        case tagline = "tagline"
        case taglineUrl = "tagline_url"
        case sponsor = "sponsor"
    }
    
}
