//
//  ViewController.swift
//  CollectionView In TableView
//
//  Created by Carrington Tafadzwa Manyuchi on 2023/02/26.
//

import UIKit


var data = [
    MovieData(sectionType:"Hollywood Movies", Movies: ["1","2","3" ,"4","5","11","12", "13","7","6",]),
    MovieData(sectionType: "ShowMax Series", Movies:  ["8","7","8","9","10","2","3","13" ,"14","15", ]),
    MovieData(sectionType: "Netflix Movies", Movies:  ["15","14","13","12","11","2","3","4","5","8"]),
    MovieData(sectionType: "Primeo Series", Movies:   ["9","8","6","5","15","14","13","11","2", "6"]),
    MovieData(sectionType: "Mzansi Movies", Movies:   ["11","8","6","8","13","4","9","15","14","6"])

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
        return 50
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .cyan
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].sectionType
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.collectionView.tag = indexPath.section
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
