//
//  ViewController.swift
//  news
//
//  Created by SS on 15.9.18.
//  Copyright © 2018 SS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let inputJSON = """
{
    "status": "ok",
    "totalResults": 8465,
    "articles": [
        {
            "source": {
                "id": "null",
                "name": "Lifehacker.com"
            },
            "author": "Emily Price",
            "title": "The 5 Announcements From Apple's iPhone Event That Actually Matter",
            "description": "Apple held its annual September event earlier today, announcing a new iPhone (a few of them, actually), a new Apple Watch, and a handful of other goodies. Read more...",
            "url": "https://lifehacker.com/the-5-announcements-from-apples-iphone-event-that-actua-1829008155",
            "urlToImage": "https://i.kinja-img.com/gawker-media/image/upload/s--ub16QH_w--/c_fill,fl_progressive,g_center,h_900,q_80,w_1600/qywawmivry7ktdelbauc.png",
            "publishedAt": "2018-09-12T21:30:00Z",
            "content": "Apple held its annual September event earlier today, announcing a new iPhone (a few of them, actually), a new Apple Watch, and a handful of other goodies. If you missed out on watching the event live, you can watch a replay of all the action on Apple’s websit… [+3779 chars]"
        },
        {
            "source": {
                "id": "null",
                "name": "Lifehacker.com"
            },
            "author": "David Murphy",
            "title": "Get Your Apple Keynote Bingo Cards for September 2018 Right Here",
            "description": "Get excited : It’s time for some Apple bingo. When I worked at the Lord of Cupertino during a keynote, we all sat around in a conference room to eat donuts, snark via group messages, and cheer members of our larger team that were blessed tapped to present at …",
            "url": "https://lifehacker.com/get-your-apple-keynote-bingo-cards-for-september-2018-r-1828986150",
            "urlToImage": "https://i.kinja-img.com/gawker-media/image/upload/s--h6E9ZNo6--/c_fill,fl_progressive,g_center,h_900,q_80,w_1600/tzksusrjgvnzapliwd8h.png",
            "publishedAt": "2018-09-12T12:00:00Z",
            "content": "Get excited : It’s time for some Apple bingo. When I worked at the Lord of Cupertino during a keynote, we all sat around in a conference room to eat donuts, snark via group messages, and cheer members of our larger team that were blessed tapped to present at … [+2149 chars]"
        },
        {
            "source": {
                "id": "null",
                "name": "Lifehacker.com"
            },
            "author": "Aimée Lutkin",
            "title": "How to Find Out if You're Eligible for the New iPhone Upgrade",
            "description": "The 2018 iPhone lineup release is mere hours away, and Apple will certainly be unveiling all sorts of exciting developments. For most of us, all that really matters is if we can get it immediately. Read more...",
            "url": "https://lifehacker.com/how-to-find-out-if-youre-eligible-for-the-new-iphone-up-1828996511",
            "urlToImage": "https://i.kinja-img.com/gawker-media/image/upload/s--BAn2et5O--/c_fill,fl_progressive,g_center,h_900,q_80,w_1600/tmmerszzqrcwmquizncr.jpg",
            "publishedAt": "2018-09-12T15:45:00Z",
            "content": "The 2018 iPhone lineup release is mere hours away, and Apple will certainly be unveiling all sorts of exciting developments. For most of us, all that really matters is if we can get it immediately. You can buy it, sure, but people who are on a financing plan … [+2020 chars]"
        },
        {
            "source": {
                "id": "null",
                "name": "Lifehacker.com"
            },
            "author": "David Murphy",
            "title": "Should You Upgrade to Apple's iPhone XS or iPhone XR?",
            "description": "A large chunk of Apple’s audience is already lighting their bank accounts on fire in anticipation of all the neat new gear they can start preordering this week. That’s just the way it is, and partly why Apple can afford to do things like build sprawling, $200…",
            "url": "https://lifehacker.com/should-you-upgrade-to-apples-iphone-xs-or-iphone-xr-1828996251",
            "urlToImage": "https://i.kinja-img.com/gawker-media/image/upload/s--_y8DWyPI--/c_fill,fl_progressive,g_center,h_900,q_80,w_1600/bjnaxuchfhfz4u8d8eiy.jpg",
            "publishedAt": "2018-09-12T21:13:00Z",
            "content": "A large chunk of Apple’s audience is already lighting their bank accounts on fire in anticipation of all the neat new gear they can start preordering this week. That’s just the way it is, and partly why Apple can afford to do things like build sprawling, $200… [+10770 chars]"
        },
        {
            "source": {
                "id": "engadget",
                "name": "Engadget"
            },
            "author": "David Lumb",
            "title": "Apple is about to ship its two billionth iOS device",
            "description": "Apple kicked off its fall event iPhone and Apple Watch with a big statistic: The total number of iOS devices the company has shipped is about to reach two billion. The device giant had previously announced that it had topped a billion active devices, includin…",
            "url": "https://www.engadget.com/2018/09/12/apple-is-about-to-ship-its-two-billionth-ios-device/",
            "urlToImage": "null",
            "publishedAt": "2018-09-12T17:20:00Z",
            "content": "null"
        },
        {
            "source": {
                "id": "engadget",
                "name": "Engadget"
            },
            "author": "Devindra Hardawar",
            "title": "Apple’s latest pitch: This gadget will save your life",
            "description": "The most interesting device Apple announced today wasn't an iPhone, it was the Apple Watch Series 4. On top of some significant design upgrades -- like that drool worthy edge to edge screen -- it's also breaking new ground with its built-in electrocardiogram …",
            "url": "https://www.engadget.com/2018/09/12/apple-watch-save-life/",
            "urlToImage": "https://o.aolcdn.com/images/dims?thumbnail=1200%2C630&quality=80&image_uri=https%3A%2F%2Fo.aolcdn.com%2Fimages%2Fdims%3Fcrop%3D1600%252C1066%252C0%252C0%26quality%3D85%26format%3Djpg%26resize%3D1600%252C1066%26image_uri%3Dhttps%253A%252F%252Fs.blogcdn.com%252Fwww.engadget.com%252Fmedia%252F2018%252F09%252Fiphone2018-2770.jpg%26client%3Da1acac3e1b3290917d92%26signature%3D22cfee07d4370749ded21dd9168267d61be3f23c&client=amp-blogside-v2&signature=b48452dd4855894b241898b062e62b42191bed86",
            "publishedAt": "2018-09-12T22:22:00Z",
            "content": "Apple gave us a hint of where the Watch was headed last year, when it announced new heart tracking features and a Stanford-led study to detect atrial fibrillation. But while they were intriguing, they weren't as potentially life-saving as the world's first co… [+1329 chars]"
        }
    ]
}
"""
        
        struct Status: Codable {
            let status: String
            let totalResults: Int
            let articles: [Article]
        }
        
        struct Article: Codable {
            let source: Source
            let author: String
            let title: String
            let description: String
            let url: String //TODO: URL
            let urlToImage: String //TODO: URL
            let publishedAt: String //TODO: date
            let content: String //TODO: Null
        }
        
        struct Source: Codable {
            let id: String //TODO: Null
            let name: String
        }
        
        let inputData = inputJSON.data(using: .utf8)!
        let decoder = JSONDecoder()
        let stat = try! decoder.decode(Status.self, from: inputData)
        dump(stat)
// 
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let data = try! encoder.encode(stat)
        let json = String(data: data, encoding: .utf8)!
        print (json)
        
    }
}

