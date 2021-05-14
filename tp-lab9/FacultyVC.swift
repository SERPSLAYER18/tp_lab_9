//
//  FacultyVC.swift
//  tp-lab9
//
//  Created by Admin on 14.05.2021.
//

import Foundation
import UIKit

struct FacultyInfo {
    let name : String!
    let imageNamed: String!
    let description : String!
    let year : String!
}

class FacultyVC: UIViewController
{
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var Description: UILabel!
    
    var facultyInfo : FacultyInfo!
    override func viewDidLoad() {
        super.viewDidLoad()
        logo.image = UIImage(named:  facultyInfo.imageNamed)
        name.text = facultyInfo.name
        year.text = "Основан в "+facultyInfo.year + " году"
        Description.text = "Описание: \n" +  facultyInfo.description
        
    }
    @IBAction func backPressed(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "FacultyChoosingVC") as? FacultyChoosingVC
        self.present(vc!, animated: true)
    }
}
