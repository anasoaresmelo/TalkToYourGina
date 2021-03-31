//: A UIKit based Playground for presenting user interface
import UIKit
import PlaygroundSupport

// MARK: Colors
public extension UIColor {
    static let mustard = UIColor(red: 246.0/255.0, green: 178.0/255.0, blue: 89.0/255.0, alpha: 1.0)
    static let greyCyan = UIColor(red: 151.0/255.0, green: 216.0/255.0, blue: 223.0/255.0, alpha: 1.0)
}


// MARK: Fonts
let cfURL = Bundle.main.url(forResource: "Montserrat-Regular", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)

let font = UIFont(name: "Montserrat-Regular", size: 35)

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
textFieldImageView.frame = CGRect(x: 70, y: 1020, width: 677, height: 140)

// Third stage
// Background conversation image
let conversationBackground = UIImage(named: "conversation-bg-white-ttyg.png")
let conversationBackgroundImageView = UIImageView(image: conversationBackground)
conversationBackgroundImageView.frame = CGRect(x: 0, y: 655, width: 1024, height: 700)

// Text Field Background
let textFieldBackground = UIImage(named: "text-field-cyan-thin-ttyg.png")
let textFieldBackgroundImageView = UIImageView(image: textFieldBackground)
textFieldBackgroundImageView.frame = CGRect(x: 150, y: 1220, width: 583, height: 109)

// MARK: Declarations
let microphoneButton = UIButton()
let helloTextField = UITextField()
let sendButton = UIButton()
var userInput = String()
let menuButton = UIButton()

let listeningButton = UIButton()
let textHeard = UILabel()

let miniMicrophoneButton = UIButton()
let myTextField = UITextField()
let scroll = UIScrollView()
let balloonUser = UILabel()
let secondSendButton = UIButton()
let balloonGina = UILabel()
let secondBalloonUser = UILabel()

//MARK: First ViewController
class MainViewController : UIViewController {
    
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .systemPink
        
        // Main
        // Only images for now
        
        // MARK: First stage
        // Text Field
        helloTextField.frame = CGRect(x: 120, y: 1065, width: 500, height: 40)
        helloTextField.placeholder = "Oie! Vamos conversar..."
        helloTextField.textColor = .lightGray
        helloTextField.font = font
        userInput = helloTextField.text!
        
        // Menu Button
        let menuButtonImage = UIImage(named: "align-left.png")
        menuButton.frame = CGRect(x: 30, y: 55, width: 140, height: 100)
        menuButton.setImage(menuButtonImage, for: .normal)
        
        // Microphone Button
        let microphoneButtonImage = UIImage(named: "microphone-cyan-ttyg.png")
        microphoneButton.frame = CGRect(x: 600, y: 1030, width: 112, height: 108)
        microphoneButton.setImage(microphoneButtonImage, for: .normal)
        
        // Send Button
        sendButton.frame = CGRect(x: 780, y: 1045, width: 180, height: 90)
        sendButton.backgroundColor = #colorLiteral(red: 0.5921568627, green: 0.8470588235, blue: 0.8745098039, alpha: 1)
        sendButton.layer.cornerRadius = 20
        sendButton.setTitle("enviar", for: .normal)
        sendButton.setTitleColor(.white, for: .normal)
        sendButton.titleLabel?.font = font
        
        // MARK: Second stage
        // Listening Button
        let listeningButtonImage = UIImage(named: "listening-ttyg.png")
        listeningButton.frame = CGRect(x: 437, y: 1005, width: 150, height: 150)
        listeningButton.setImage(listeningButtonImage, for: .normal)
        
        // Text
        textHeard.frame = CGRect(x: 12, y: 1200, width: 1000, height: 60)
        textHeard.text = "'Fala sendo transcrita'"
        textHeard.font = UIFont(name: "Montserrat-Regular", size: 50)
        textHeard.textColor = .lightGray
        textHeard.textAlignment = .center
        
        
        // MARK: Third stage
        // Text Field
        myTextField.frame = CGRect(x: 190, y: 1225, width: 400, height: 100)
        myTextField.placeholder = "Algo mais?"
        myTextField.textColor = .lightGray
        myTextField.font = font
        
        // Microphone Button
        let miniMicrophoneButtonImage = UIImage(named: "microphone-cyan-ttyg.png")
        miniMicrophoneButton.frame = CGRect(x: 620, y: 1225, width: 90, height: 90)
        miniMicrophoneButton.setImage(miniMicrophoneButtonImage, for: .normal)
        
        // Second Send Button
        secondSendButton.frame = CGRect(x: 770, y: 1225.5, width: 180, height: 90)
        secondSendButton.backgroundColor = #colorLiteral(red: 0.5921568627, green: 0.8470588235, blue: 0.8745098039, alpha: 1)
        secondSendButton.layer.cornerRadius = 20
        secondSendButton.setTitle("enviar", for: .normal)
        secondSendButton.setTitleColor(.white, for: .normal)
        secondSendButton.titleLabel?.font = font
        
        // Scroll
        scroll.frame = CGRect(x: 12, y: 690, width: 1000, height: 500)
        scroll.backgroundColor = .clear
        scroll.contentSize = CGSize(width: 1000, height: 2000)
        
        // MARK: Chat
        balloonUser.frame = CGRect(x: 600, y: 30, width: 350, height: 100)
        balloonUser.backgroundColor = #colorLiteral(red: 0.5921568627, green: 0.8470588235, blue: 0.8745098039, alpha: 1)
        balloonUser.text = "   Oie"
        balloonUser.textColor = .darkGray
        balloonUser.font = font
        balloonUser.textAlignment = .left
        balloonUser.layer.cornerRadius = 50
        balloonUser.lineBreakMode = .byWordWrapping
        balloonUser.numberOfLines = 0
        
        balloonGina.frame = CGRect(x: 70, y: 160, width: 370, height: 100)
        balloonGina.backgroundColor = #colorLiteral(red: 0.9647058824, green: 0.6980392157, blue: 0.3490196078, alpha: 1)
        balloonGina.text = "  Olá, quanto tempo!"
        balloonGina.font = font
        balloonGina.textColor = .darkGray
        balloonGina.textAlignment = .left
        balloonGina.layer.cornerRadius = 50
        balloonGina.lineBreakMode = .byWordWrapping
        balloonGina.numberOfLines = 0
        
        secondBalloonUser.frame = CGRect(x: 600, y: 290, width: 350, height: 100)
        secondBalloonUser.backgroundColor = #colorLiteral(red: 0.5921568627, green: 0.8470588235, blue: 0.8745098039, alpha: 1)
        secondBalloonUser.text = "  O que é menarca?"
        secondBalloonUser.textColor = .darkGray
        secondBalloonUser.font = font
        secondBalloonUser.textAlignment = .left
        secondBalloonUser.layer.cornerRadius = 50
        secondBalloonUser.lineBreakMode = .byWordWrapping
        secondBalloonUser.numberOfLines = 0
        
        
        // Views
        view.addSubview(backgroundImageView)
        view.addSubview(menuButton)
        view.addSubview(textFieldImageView)
        view.addSubview(microphoneButton)
        view.addSubview(helloTextField)
        view.addSubview(sendButton)
        view.addSubview(listeningButton)
        view.addSubview(conversationBackgroundImageView)
        view.addSubview(textFieldBackgroundImageView)
        view.addSubview(myTextField)
        view.addSubview(miniMicrophoneButton)
        view.addSubview(scroll)
        view.addSubview(secondSendButton)
        view.addSubview(textHeard)
        scroll.addSubview(balloonUser)
        scroll.addSubview(balloonGina)
        scroll.addSubview(secondBalloonUser)
        
        // Hidden itens
        listeningButton.isHidden = true
        miniMicrophoneButton.isHidden = true
        myTextField.isHidden = true
        conversationBackgroundImageView.isHidden = true
        textFieldBackgroundImageView.isHidden = true
        scroll.isHidden = true
        secondSendButton.isHidden = true
        textHeard.isHidden = true
        balloonUser.isHidden = true
        balloonGina.isHidden = true
        secondBalloonUser.isHidden = true
        
        // Gestures
        conversationBackgroundImageView.isUserInteractionEnabled = true
        
        
        self.view = view
    }
    
    // MARK: Buttons functions
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Hide keyboard
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        self.view.addGestureRecognizer(tapGesture)
        
        // Buttons
        sendButton.addTarget(self, action: #selector(MainViewController.touchedSendButton), for: .touchUpInside)
        
//        menuButton.addTarget(self, action: #selector(MainViewController.touchedMenuButton), for: .touchUpInside)
        
        microphoneButton.addTarget(self, action: #selector(MainViewController.touchedMicrophoneButton), for: .touchUpInside)
        
        listeningButton.addTarget(self, action: #selector(MainViewController.touchedListeningButton), for: .touchUpInside)
        
        miniMicrophoneButton.addTarget(self, action: #selector(MainViewController.touchedMiniMicrophoneButton), for: .touchUpInside)
        
        secondSendButton.addTarget(self, action: #selector(MainViewController.touchedSecondSendButton), for: .touchUpInside)
        
    }
    
    @objc func hideKeyboard() {
        helloTextField.resignFirstResponder()
        myTextField.resignFirstResponder()
    }
    
    @IBAction func touchedSendButton() {
        sendButton.isHidden = true
        microphoneButton.isHidden = true
        helloTextField.isHidden = true
        textFieldImageView.isHidden = true
        myTextField.isHidden = false
        miniMicrophoneButton.isHidden = false
        conversationBackgroundImageView.isHidden = false
        textFieldBackgroundImageView.isHidden = false
        scroll.isHidden = false
        secondSendButton.isHidden = false
        
        // Chat
        balloonUser.isHidden = false
//        balloonUser.text = userInput
        balloonGina.isHidden = false
    }
    
    @IBAction func touchedMicrophoneButton() {
        microphoneButton.isHidden = true
        helloTextField.isHidden = true
        sendButton.isHidden = true
        textFieldImageView.isHidden = true
        listeningButton.isHidden = false
        textHeard.isHidden = false
        
        listeningButton.blink(duration: 1.5, stopAfter:10.0)
        
    }
    
    @IBAction func touchedListeningButton() {
        listeningButton.isHidden = true
        textHeard.isHidden = true
        sendButton.isHidden = true
        myTextField.isHidden = false
        miniMicrophoneButton.isHidden = false
        conversationBackgroundImageView.isHidden = false
        textFieldBackgroundImageView.isHidden = false
        scroll.isHidden = false
        secondSendButton.isHidden = false
        
        // Chat
        balloonUser.isHidden = false
//        balloonUser.text = userInput
        balloonGina.isHidden = false
    }
    
    @IBAction func touchedMiniMicrophoneButton() {
        listeningButton.isHidden = false
        sendButton.isHidden = true
        myTextField.isHidden = true
        miniMicrophoneButton.isHidden = true
        scroll.isHidden = true
        secondSendButton.isHidden = true
        conversationBackgroundImageView.isHidden = true
        textFieldBackgroundImageView.isHidden = true
        textHeard.isHidden = false
        
        listeningButton.blink(duration: 1.5, stopAfter:10.0)
    }
    
    @IBAction func touchedSecondSendButton() {
        secondBalloonUser.isHidden = false
    }
    
//    @IBAction func touchedMenuButton() {
//        navigationController?.pushViewController(menuView, animated: true)
//    }
}

extension UIButton {
    open override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        return self.bounds.contains(point) ? self : nil
    }
    func blink(enabled: Bool = true, duration: CFTimeInterval = 1.0, stopAfter: CFTimeInterval = 0.0 ) {
        enabled ? (UIView.animate(withDuration: duration, //Time duration you want,
            delay: 0.0,
            options: [.curveEaseInOut, .autoreverse, .repeat],
            animations: { [weak self] in self?.alpha = 0.0 },
            completion: { [weak self] _ in self?.alpha = 1.0 })) : self.layer.removeAllAnimations()
        if !stopAfter.isEqual(to: 0.0) && enabled {
            DispatchQueue.main.asyncAfter(deadline: .now() + stopAfter) { [weak self] in
                self?.layer.removeAllAnimations()
            }
        }
    }
}

// Navigation

//let menuView = MenuViewController()

// Present the view controller in the Live View window

let vc = MainViewController(screenType: .ipadPro12_9)
PlaygroundPage.current.liveView = vc.scale(to: 0.4)
