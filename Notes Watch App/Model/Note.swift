//
//  Note.swift
//  Notes Watch App
//
//  Created by Philip Al-Twal on 10/24/22.
//

import Foundation


struct Note: Codable, Identifiable {
    let id: UUID
    let text: String
}
