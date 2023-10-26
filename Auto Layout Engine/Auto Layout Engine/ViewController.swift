//
//  ViewController.swift
//  Auto Layout Engine
//
//  Created by Sesili Tsikaridze on 26.10.23.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Struct
    
    struct Coffee {
        var name: String
        var specifics: String
        var review: Double
        var description: String
        var priceS: Double
        var priceM: Double
        var priceL: Double
    }
    
    var cappuccino = Coffee(name: "Cappuccino", specifics: "with Chocolate", review: 4.7, description: "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure", priceS: 4.35, priceM: 6.55, priceL: 8.49)
    
    //MARK: - IBOutlets
    
    
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet private weak var productName: UILabel!
    @IBOutlet private weak var specifics: UILabel!
    @IBOutlet private weak var review: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    
    @IBOutlet private weak var sButton: UIButton!
    @IBOutlet private weak var mButton: UIButton!
    @IBOutlet private weak var lButton: UIButton!
    
    @IBOutlet private weak var priceLabel: UILabel!
    @IBOutlet private weak var buyNowButton: UIButton!
    @IBOutlet private weak var bottomView: UIView!
    
    //MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainImage.layer.cornerRadius = 16
        
        inputInfo(coffee: cappuccino)
        
        sizeButtonVisual(button: sButton)
        sizeButtonVisual(button: mButton)
        sizeButtonVisual(button: lButton)
        
        bottomViewVisual(view: bottomView)
        
    }
    
    //MARK: - IBActions
    
    @IBAction private func sButton(_ sender: UIButton) {
        priceLabel.text = "$ \(cappuccino.priceS)"
        chosenButtonVisual(button: sButton)
    }
    
    @IBAction private func mButton(_ sender: UIButton) {
        priceLabel.text = "$ \(cappuccino.priceM)"
        chosenButtonVisual(button: mButton)
    }
    
    @IBAction private func lButton(_ sender: UIButton) {
        priceLabel.text = "$ \(cappuccino.priceL)"
        chosenButtonVisual(button: lButton)
    }
    
    
    //MARK: - Functions
    
    private func inputInfo(coffee: Coffee) {
        productName.text = coffee.name
        specifics.text = coffee.specifics
        review.text = "\(coffee.review)"
        descriptionLabel.text = coffee.description
    }
    
    private func sizeButtonVisual(button: UIButton) {
        button.layer.cornerRadius = 12
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 1
    }
    
    private func chosenButtonVisual(button: UIButton) {
        sButton.backgroundColor = .white
        mButton.backgroundColor = .white
        lButton.backgroundColor = .white
        
        sButton.layer.borderColor = UIColor.lightGray.cgColor
        mButton.layer.borderColor = UIColor.lightGray.cgColor
        lButton.layer.borderColor = UIColor.lightGray.cgColor
        
        button.backgroundColor = .appLightOrange
        button.layer.borderColor = UIColor.appDarkOrange.cgColor
    }
    
    private func bottomViewVisual(view: UIView) {
        view.layer.cornerRadius = 24
        view.layer.shadowOffset = CGSize(width: 0, height: -10)
        view.layer.shadowColor = UIColor(red: 0.896, green: 0.896, blue: 0.896, alpha: 0.25).cgColor
        view.layer.shadowOpacity = 1
    }
    
}

