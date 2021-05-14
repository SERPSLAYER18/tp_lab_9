//
//  ViewController.swift
//  tp-lab9
//
//  Created by Admin on 14.05.2021.
//

import UIKit

class FacultyChoosingVC: UIViewController {
    @IBOutlet weak var FacultiesStack: UIStackView!
    @IBOutlet weak var BSULogo: UIImageView!
    
    let faculties: [String] = [
        "Военный факультет",
        "Биологический факультет",
        "Факультет географии и геоинформатики",
        "Факультет социокультурных коммуникаций"
    ]
    let assetnames: [String] = [
        "Military",
        "Biological",
        "GeoInformatics",
        "SocialCommunications"
    ]
    
    let descriptions: [String] = [
        "Военный факультет БГУ осуществляет подготовку военных кадров для Вооруженных Сил Республики Беларусь, органов пограничной службы Государственного пограничного комитета, Комитета государственной безопасности и внутренних войск министерства внутренних дел Республики Беларусь.",
        "Крупнейший естественнонаучный факультет БГУ и самый большой по количеству студентов биологический факультет в Восточной Европе. Основной центр республики по проведению биоэквивалентных испытаний новых лекарственных препаратов.",
        "Единственный в стране учебно-научный центр по подготовке специалистов в области геоинформатики, космоаэрокартографии, геодемографии, гидрометеорологии, геоэкологии.",
        "На ФСК обучается более 1000 человек. Образование соответствует современным  стандартам. Выпускники  факультета  – профессиональные переводчики, специалисты в сфере дизайна, менеджмента, рекламы,  PR, IT-технологий. "
    ]
    let years: [String] = [
        "1924",
        "1927",
        "1933",
        "1937"
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        FacultiesStack.alignment = .fill
        FacultiesStack.distribution = .fillEqually
        FacultiesStack .spacing = 20
        for i in 0...faculties.count-1{
            let horizontalStack = UIStackView()
            let facultyButton = UIButton()
           // let facultyLogo = UIImageView()
            facultyButton.setTitle(faculties[i], for: .normal)
            facultyButton.setTitleColor(.white, for: .normal)
            //facultyButton.titleLabel?.text = faculties[i]
            //facultylabel.font = UIFont(name: "MarkerFelt-Thin", size: 14)
            facultyButton.titleLabel?.textColor = .black
            facultyButton.titleLabel?.textAlignment = .left
            facultyButton.titleLabel?.numberOfLines = 3
            facultyButton.backgroundColor = .systemBlue
            facultyButton.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
           
            facultyButton.addTarget(self, action: #selector(pressed), for: .touchUpInside)
//            facultyLogo.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//            facultyLogo.image = UIImage(named: assetnames[i])
            //facultyLogo.image?.resizingMode =
//            horizontalStack.spacing = 20
//            horizontalStack.contentMode = .center
//            horizontalStack.alignment = .center
            //horizontalStack.distribution = .fillProportionally
            
            
            
            horizontalStack.addArrangedSubview(facultyButton)
            //horizontalStack.addArrangedSubview(facultyLogo)
            FacultiesStack.addArrangedSubview(facultyButton)
            
            
        }
        
    }
    
    @objc func pressed(sender: UIButton){
        let name = sender.titleLabel?.text
        let id = faculties.firstIndex(of: name!)
        let stack = UIStackView()
        let facultyLogo = UIImageView()
        facultyLogo.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        facultyLogo.image = UIImage(named: assetnames[id!])
        stack.axis = .vertical
        stack.addArrangedSubview(facultyLogo)
        
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "FacultyVC") as? FacultyVC
        vc?.facultyInfo = FacultyInfo(name: faculties[id!],
                                      imageNamed: assetnames[id!],
                                      description: descriptions[id!],
                                      year: years[id!])
        self.present(vc!, animated: true)
        print(name!)
    }

}

