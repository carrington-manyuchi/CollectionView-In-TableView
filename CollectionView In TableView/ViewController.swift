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

