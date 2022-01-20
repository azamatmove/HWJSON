//
//  ViewController.swift
//  HWJSON
//
//  Created by Azamat Sarinzhiev on 20/1/22.
//

import UIKit

class NewsModel: Codable {
    var news: [arrayNews] = []
    var page: Int? = nil
}
class arrayNews: Codable {
    var title: String? = nil
    var id: Int? = nil
    var image: String? = nil
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let json = """
        
        {
          "news" : [
            {
              "title": "test1",
              "id": 1,
              "image": "URL"
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL"
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL"
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL"
            },
            {
              "title": "test1",
              "id": 1,
              "image": "URL"
            }
          ],
          "page": 10
        }
        """
        let model = try! JSONDecoder().decode(NewsModel.self, from: Data(json.utf8))
        dump(model)
    }


}

