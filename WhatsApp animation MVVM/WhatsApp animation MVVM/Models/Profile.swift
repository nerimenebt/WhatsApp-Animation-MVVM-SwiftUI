//
//  Profile.swift
//  WhatsApp animation MVVM
//
//  Created by Nerimene on 18/5/2021.
//

import SwiftUI

struct Profile: Identifiable {
    var id = UUID().uuidString
    var username: String
    var time: String
    var lastMsg: String
    var profileImage: String
}

let recents = [Profile(username: "Katie Deutsch", time: "10:25", lastMsg: "okay i will do it later", profileImage: "katiePic"),
               Profile(username: "JMT", time: "12:00", lastMsg: "Hey how are you?", profileImage: "jmtPic"),
               Profile(username: "Sireesha", time: "11:40", lastMsg: "Okay i will create a new task for you in jira now 🌸", profileImage: "sireeshaPic"),
               Profile(username: "Florine", time: "18:15", lastMsg: "I'm in a meeting, i'll call you", profileImage: "florinePic"),
               Profile(username: "Mary Ann Farley", time: "09:30", lastMsg: "hello add the documentations plz", profileImage: "maryPic"),
               Profile(username: "Edgar Navas", time: "14:35", lastMsg: "Hey, i will send you all the new assets now 😉", profileImage: "edgarPic"),
               Profile(username: "Pape Samba", time: "15:00", lastMsg: "Salut neri comment cv?", profileImage: "sambaPic"),
               Profile(username: "Julie", time: "14:10", lastMsg: "i need the store app version plz", profileImage: "juliePic"),
               Profile(username: "Anne Marie", time: "13:09", lastMsg: "Hey what's up ?", profileImage: "annePic"),
               Profile(username: "Joce", time: "10:30", lastMsg: "Hey neri, i have a new joke 🤪", profileImage: "jocePic")]
