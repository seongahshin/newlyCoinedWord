//
//  MainViewController.swift
//  newlyCoinedWord
//
//  Created by 신승아 on 2022/07/09.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchBarDesign()
        buttonDesign(button1)
        buttonDesign(button2)
        buttonDesign(button3)
        buttonDesign(button4)
    }
    
    // 텍스트필드 디자인
    func searchBarDesign() {
        // 검색창 디자인
        searchTextField.layer.borderWidth = 2
        searchTextField.layer.borderColor = UIColor.black.cgColor
        searchTextField.attributedPlaceholder = NSAttributedString(string: "검색어를 입력하세요", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        
        // 검색버튼 디자인
        searchButton.layer.borderWidth = 2
        searchButton.layer.borderColor = UIColor.black.cgColor
        searchButton.backgroundColor = .black
    }
    
    // 검색기록 버튼 디자인
    func buttonDesign(_ buttonName: UIButton) {
        buttonName.layer.cornerRadius = 3
        buttonName.layer.borderWidth = 1
        buttonName.backgroundColor = .white
        buttonName.setTitleColor(.black, for: .normal)
    }

    // 탭제스쳐 키보드 내리기
    @IBAction func tapGestureRecognized(_ sender: Any) {
        view.endEditing(true)
    }
    
    // 검색 버튼 누르면 키보드 내리기
    @IBAction func buttonClicked(_ sender: UIButton) {
        view.endEditing(true)
    }
    
    // retun 버튼 누르면 키보드 내리기
    @IBAction func returnButtonClicked(_ sender: Any) {
    }
    
}
