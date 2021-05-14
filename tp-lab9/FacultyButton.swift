////
////  FacultyButton.swift
////  tp-lab9
////
////  Created by Admin on 14.05.2021.
////
//
//import Foundation
//import UIKit
//
//struct FacultyInfo {
//    internal init(name: String? = nil, description: String? = nil, year: Int? = nil) {
//        self.name = name
//        self.description = description
//        self.year = year
//    }
//    var name:String!
//    var description: String!
//    var year: Int!
//}
//
//class FacultyButton: UIStackView {
//    internal init(facultyLogoImg: CGImage, facultyInfo: FacultyInfo) {
//        self.facultyLogoImg = facultyLogoImg
//        self.facultyInfo = facultyInfo
//        let image = UIImage(cgImage:facultyLogoImg)
//        let label = UILabel()
//        label.text = facultyInfo.name
//       // addArrangedSubview((UIView)image)
//        addArrangedSubview(label)
//    }
//
//    required init(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    var facultyLogoImg : CGImage
//    var facultyInfo : FacultyInfo
//
//
//
//    override func target(forAction action: Selector, withSender sender: Any?) -> Any? {
//        print("Button works")
//    }
//
//
//}
