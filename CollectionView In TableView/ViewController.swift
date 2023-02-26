//
//  ViewController.swift
//  CollectionView In TableView
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/02/26.
//

import UIKit


var data = [
    MovieData(sectionType:"Hollywood Movies", Movies: ["Movie1" , "Movie2", "Movie3" , "Movie4", "Movie5"]),
    MovieData(sectionType: "ShowMax Series", Movies:["Movie1" , "Movie2", "Movie3" , "Movie4", "Movie5"]),
    MovieData(sectionType: "Netflix Movies", Movies:["Movie1" , "Movie2", "Movie3" , "Movie4", "Movie5"]),
    MovieData(sectionType: "Primeo Series", Movies: ["Movie1" , "Movie2", "Movie3" , "Movie4", "Movie5"]),
    MovieData(sectionType: "Mzansi Movies", Movies:["Movie1" , "Movie2", "Movie3" , "Movie4", "Movie5"]),

]

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}



extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    // MARK: - Methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        <#code#>
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
