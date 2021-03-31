//: A UIKit based Playground for presenting user interface
import UIKit
import PlaygroundSupport


// MARK: Fonts
let cfURL = Bundle.main.url(forResource: "Montserrat-Regular", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)

let font = UIFont(name: "Montserrat-Regular", size: 50)

// MARK: Images

// Main
// Background and Gina image
let background = UIImage(named: "gina-and-bg-2.png")
let backgroundImageView = UIImageView(image: background)
backgroundImageView.frame = CGRect(x: 0, y: 0, width: 1024, height: 1366)

// First stage
// Text field image
let textFieldImage = UIImage(named: "text-field-cyan-ttyg.png")
let textFieldImageView = UIImageView(image: textFieldImage)
textFieldImageView.frame = CGRect(x: 173.5, y: 1000, width: 677, height: 164)

// Third stage
// Background conversation image
let conversationBackground = UIImage(named: "conversation-bg-white-ttyg.png")
let conversationBackgroundImageView = UIImageView(image: conversationBackground)
conversationBackgroundImageView.frame = CGRect(x: 0, y: 655, width: 1024, height: 700)

// Text Field Background
let textFieldBackground = UIImage(named: "text-field-cyan-thin-ttyg.png")
let textFieldBackgroundImageView = UIImageView(image: textFieldBackground)
textFieldBackgroundImageView.frame = CGRect(x: 220, y: 680, width: 583, height: 109)


//MARK: First ViewController
class MainViewController : UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .systemPink
        
        // Main
        // Only images for now
        
        // MARK: First stage
        // Text Field
        helloTextField.frame = CGRect(x: 230, y: 1060, width: 400, height: 40)
        helloTextField.text = "C'mon let's talk!"
        helloTextField.textColor = .lightGray
        helloTextField.font = font
        
        // Microphone Button
        let microphoneButtonImage = UIImage(named: "microphone-cyan-ttyg.png")
        microphoneButton.frame = CGRect(x: 710, y: 1025, width: 112, height: 108)
        microphoneButton.setImage(microphoneButtonImage, for: .normal)
        
        // MARK: Second stage
        // Listening Button
        let listeningButtonImage = UIImage(named: "listening-ttyg.png")
        listeningButton.frame = CGRect(x: 390, y: 1025, width: 225, height: 225)
        listeningButton.setImage(listeningButtonImage, for: .normal)
        
        // MARK: Third stage
        // Text Field
        myTextField.frame = CGRect(x: 260, y: 682, width: 400, height: 100)
        myTextField.text = "Anything else?"
        myTextField.textColor = .lightGray
        myTextField.font = font
        
        // Microphone Button
        let miniMicrophoneButtonImage = UIImage(named: "microphone-cyan-ttyg.png")
        miniMicrophoneButton.frame = CGRect(x: 700, y: 687, width: 90, height: 90)
        miniMicrophoneButton.setImage(miniMicrophoneButtonImage, for: .normal)
        
        // Views
        view.addSubview(backgroundImageView)
        view.addSubview(textFieldImageView)
        view.addSubview(microphoneButton)
        view.addSubview(helloTextField)
        view.addSubview(listeningButton)
        view.addSubview(conversationBackgroundImageView)
        view.addSubview(textFieldBackgroundImageView)
        view.addSubview(myTextField)
        view.addSubview(miniMicrophoneButton)
        view.addSubview(checkButton)
        
        // Hidden itens
        listeningButton.isHidden = true
        checkButton.isHidden = true
        miniMicrophoneButton.isHidden = true
        myTextField.isHidden = true
        conversationBackgroundImageView.isHidden = true
        textFieldBackgroundImageView.isHidden = true
        
        // Gestures
        conversationBackgroundImageView.isUserInteractionEnabled = true
        
        
        self.view = view
    }
    
    // MARK: Declarations
    let microphoneButton = UIButton()
    let helloTextField = UITextField()
    
    let listeningButton = UIButton()
    
    let miniMicrophoneButton = UIButton()
    let checkButton = UIButton()
    let myTextField = UITextField()
    
    // MARK: Buttons functions
    override func viewDidLoad() {
        // Hide keyboard
        super.viewDidLoad()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        self.view.addGestureRecognizer(tapGesture)
        
        // Buttons
        microphoneButton.addTarget(self, action: #selector(MainViewController.touchedMicrophoneButton), for: .touchUpInside)
        
        listeningButton.addTarget(self, action: #selector(MainViewController.touchedListeningButton), for: .touchUpInside)
        
        miniMicrophoneButton.addTarget(self, action: #selector(MainViewController.touchedMiniMicrophoneButton), for: .touchUpInside)
        
        checkButton.addTarget(self, action: #selector(MainViewController.touchedCheckButton), for: .touchUpInside)
    }
    
    @objc func hideKeyboard() {
        helloTextField.resignFirstResponder()
        myTextField.resignFirstResponder()
    }
    
    @IBAction func touchedMicrophoneButton() {
        print("touched Microphone Button")
        microphoneButton.isHidden = true
        helloTextField.isHidden = true
        textFieldImageView.isHidden = true
        listeningButton.isHidden = false
    }
    
    @IBAction func touchedListeningButton() {
        print("touched Listening Button")
        listeningButton.isHidden = true
        checkButton.isHidden = false
        myTextField.isHidden = false
        miniMicrophoneButton.isHidden = false
        conversationBackgroundImageView.isHidden = false
        textFieldBackgroundImageView.isHidden = false
    }
    
    @IBAction func touchedMiniMicrophoneButton() {
        print("touched Mini Microphone Button")
        listeningButton.isHidden = false
        checkButton.isHidden = true
        myTextField.isHidden = true
        miniMicrophoneButton.isHidden = true
        conversationBackgroundImageView.isHidden = true
        textFieldBackgroundImageView.isHidden = true
    }
    
    @IBAction func touchedCheckButton() {
        print("touched Check Button")
    }
    
}

// Present the view controller in the Live View window
let vc = MainViewController(screenType: .ipadPro12_9, isPortrait: true)
PlaygroundPage.current.liveView = vc.scale(to: 0.4)
