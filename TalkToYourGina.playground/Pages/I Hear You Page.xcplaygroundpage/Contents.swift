//: [Previous](@previous)

//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .systemPink
        
        // Background image
        let backGround = UIImage(named: "bg-ttyg")
        let backGroundImageView = UIImageView(image: backGround)
        backGroundImageView.frame = CGRect(x: 0, y: 0, width: 480, height: 700)
        
        // Gina image
        let gina = UIImage(named: "Gina-ttyg")
        let ginaImageView = UIImageView(image: gina)
        ginaImageView.frame = CGRect(x: 20, y: 120, width: 440, height: 530)
        
        // Button
        let iHearYouButtonImage = UIImage(named: "i-hear-you-ttyg")
        iHearYouButton.frame = CGRect(x: 165, y: 480, width: 130, height: 130)
        iHearYouButton.setImage(iHearYouButtonImage, for: .normal)
        
        // Views
        view.addSubview(backGroundImageView)
        view.addSubview(ginaImageView)
        view.addSubview(iHearYouButton)
        
        self.view = view
    }
    
    
    let iHearYouButton = UIButton()
    
    override func viewDidLoad() {
        iHearYouButton.addTarget(self, action: #selector(MyViewController.touchedButton), for: .touchUpInside)
    }
    
    @IBAction func touchedButton() {
        print("oi")
    }
}
// Present the view controller in the Live View window
let mvc = MyViewController()
mvc.preferredContentSize = CGSize(width: 480, height: 640)
PlaygroundPage.current.liveView = mvc


//: [Next](@next)
