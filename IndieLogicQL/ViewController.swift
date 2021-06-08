//
//  ViewController.swift
//  IndieLogicQL
//
//  Created by Surjeet on 27/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ApolloQLManager.shared.graphQLendPoint = ""
        ApolloQLManager.shared.graphQLAuthKey = ""
        
        fetchEvent(slug: "kodak-non-gated")
    }

    func fetchEvent(slug: String) {
        
        ApolloQLManager.shared.fetchEventBySlug(slug: slug, product: "Kodak") { (events) in
            print(events?.count)
        } failure: { (error) in
            print("error")
        }
    }

    func fetchAllEvent() {
        
        ApolloQLManager.shared.fetchAllEventInASC { (events) in
            print(events?.count)
        } failure: { (error) in
            print("error")
        }
    }
    

}

