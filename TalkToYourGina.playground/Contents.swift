//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .systemPink
        
        let label = UILabel()
        label.frame = CGRect(x: 110, y: 20, width: 2000, height: 20)
        label.text = "Hello, it's time to TalkToYourGina!"
        label.textColor = .white
        
        // Button
        button.frame = CGRect(x: 130, y: 40, width: 200, height: 40)
        button.setTitle("Let's go!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        // Background image
        let backGround = UIImage(named: "bg-ttyg")
        let backGroundImageView = UIImageView(image: backGround)
        backGroundImageView.frame = CGRect(x: 0, y: 0, width: 480, height: 700)
        
        // Gina image
        let gina = UIImage(named: "Gina-ttyg")
        let ginaImageView = UIImageView(image: gina)
        ginaImageView.frame = CGRect(x: 20, y: 120, width: 440, height: 530)
        
        // Text field image
        let textFieldImage = UIImage(named: "text-field-ttyg")
        let textFieldImageView = UIImageView(image: textFieldImage)
        textFieldImageView.frame = CGRect(x: 50, y: 520, width: 400, height: 100)
        
        // Views
        view.addSubview(backGroundImageView)
        view.addSubview(ginaImageView)
        view.addSubview(textFieldImageView)
        view.addSubview(label)
        view.addSubview(button)
        
        self.view = view
    }
    
    let button = UIButton()
    
    override func viewDidLoad() {
        button.addTarget(self, action: #selector(MyViewController.touchedButton), for: .touchUpInside)
    }
    
    @IBAction func touchedButton() {
        print("oi")
    }
}
// Present the view controller in the Live View window
let mvc = MyViewController()
mvc.preferredContentSize = CGSize(width: 480, height: 640)
PlaygroundPage.current.liveView = mvc
