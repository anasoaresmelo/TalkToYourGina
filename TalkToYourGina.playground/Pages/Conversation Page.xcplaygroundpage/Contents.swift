//: [Previous](@previous)

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .systemPink
        
        // Background image
        let background = UIImage(named: "bg-ttyg")
        let backgroundImageView = UIImageView(image: background)
        backgroundImageView.frame = CGRect(x: 0, y: 0, width: 480, height: 700)
        
        // Background conversation image
        let conversationBackground = UIImage(named: "conversation-bg-ttyg")
        let conversationBackgroundImageView = UIImageView(image: conversationBackground)
        conversationBackgroundImageView.frame = CGRect(x: 0, y: 300, width: 480, height: 350)
        
        // Gina image
        let gina = UIImage(named: "Gina-ttyg")
        let ginaImageView = UIImageView(image: gina)
        ginaImageView.frame = CGRect(x: 20, y: 120, width: 440, height: 530)
        
        // Text Field Background
        let textFieldBackground = UIImage(named: "text-field-conversation-ttyg")
        let textFieldBackgroundImageView = UIImageView(image: textFieldBackground)
        textFieldBackgroundImageView.frame = CGRect(x: 35, y: 570, width: 410, height: 75)
        
        // Text Field
        let myTextField = UITextField ( )
        myTextField.frame = CGRect(x: 140, y: 595, width: 2000, height: 40)
        myTextField.text = "..."
        myTextField.textColor = .lightGray
        
        // Microphone Button
        let microphoneButtonImage = UIImage(named: "microphone-ttyg")
        microphoneButton.frame = CGRect(x: 64.5, y: 571.5, width: 65, height: 65)
        microphoneButton.setImage(microphoneButtonImage, for: .normal)
        
        // Check Button
        let checkButtonImage = UIImage(named: "check-ttyg")
        checkButton.frame = CGRect(x: 365, y: 595, width: 45, height: 40)
        checkButton.setImage(checkButtonImage, for: .normal)
        
        // Views
        view.addSubview(backgroundImageView)
        view.addSubview(ginaImageView)
        view.addSubview(conversationBackgroundImageView)
        view.addSubview(textFieldBackgroundImageView)
        view.addSubview(myTextField)
        view.addSubview(microphoneButton)
        view.addSubview(checkButton)
        
        self.view = view
    }
    
    // Declarations
    let microphoneButton = UIButton()
    let checkButton = UIButton()
    
    // Buttons and functions
    override func viewDidLoad() {
        microphoneButton.addTarget(self, action: #selector(MyViewController.touchedButton), for: .touchUpInside)
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
