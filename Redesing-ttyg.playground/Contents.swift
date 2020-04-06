//: A UIKit based Playground for presenting user interface
  import UIKit
  import PlaygroundSupport


  // MARK: Fonts
      let cfURL = Bundle.main.url(forResource: "Montserrat-Regular", withExtension: "ttf")! as CFURL
      CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)

      let font = UIFont(name: "Montserrat-Regular", size: 25)

  // MARK: Images

  // Main
  // Background and Gina image
      let background = UIImage(named: "gina-and-bg-2.png")
      let backgroundImageView = UIImageView(image: background)
      backgroundImageView.frame = CGRect(x: 0, y: 0, width: 480, height: 640)

  // First stage
  // Text field image
      let textFieldImage = UIImage(named: "text-field-cyan-ttyg.png")
      let textFieldImageView = UIImageView(image: textFieldImage)
      textFieldImageView.frame = CGRect(x: 40, y: 480, width: 400, height: 90)

  // Third stage
  // Background conversation image
      let conversationBackground = UIImage(named: "conversation-bg-white-ttyg.png")
      let conversationBackgroundImageView = UIImageView(image: conversationBackground)
      conversationBackgroundImageView.frame = CGRect(x: 0, y: 290, width: 480, height: 350)

  // Text Field Background
      let textFieldBackground = UIImage(named: "text-field-cyan-ttyg.png")
      let textFieldBackgroundImageView = UIImageView(image: textFieldBackground)
      textFieldBackgroundImageView.frame = CGRect(x: 55, y: 550, width: 370, height: 75)


  //MARK: First ViewController
  class MainViewController : UIViewController {
      
      override func loadView() {
          let view = UIView()
          view.backgroundColor = .systemPink
          
          // Main
          // Only images for now
          
          // MARK: First stage
          // Text Field
          helloTextField.frame = CGRect(x: 70, y: 505, width: 200, height: 40)
          helloTextField.text = "C'mon let's talk!"
          helloTextField.textColor = .lightGray
          helloTextField.font = font
          
          // Microphone Button
          let microphoneButtonImage = UIImage(named: "microphone-cyan-ttyg.png")
          microphoneButton.frame = CGRect(x: 350, y: 490, width: 70, height: 70)
          microphoneButton.setImage(microphoneButtonImage, for: .normal)
          
          // MARK: Second stage
          // Listening Button
          let listeningButtonImage = UIImage(named: "listening-ttyg.png")
          listeningButton.frame = CGRect(x: 165, y: 480, width: 130, height: 130)
          listeningButton.setImage(listeningButtonImage, for: .normal)
          
          // MARK: Third stage
          // Text Field
          myTextField.frame = CGRect(x: 90, y: 567, width: 200, height: 40)
          myTextField.text = "Anything else?"
          myTextField.textColor = .lightGray
          myTextField.font = font
          
          // Microphone Button
          let miniMicrophoneButtonImage = UIImage(named: "microphone-cyan-ttyg.png")
          miniMicrophoneButton.frame = CGRect(x: 350, y: 555, width: 65, height: 65)
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
          microphoneButton.addTarget(self, action: #selector(MainViewController.touchedMicrophoneButton), for: .touchUpInside)
          
          listeningButton.addTarget(self, action: #selector(MainViewController.touchedListeningButton), for: .touchUpInside)
          
          miniMicrophoneButton.addTarget(self, action: #selector(MainViewController.touchedMiniMicrophoneButton), for: .touchUpInside)
          
          checkButton.addTarget(self, action: #selector(MainViewController.touchedCheckButton), for: .touchUpInside)
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
  let mvc = MainViewController()
  mvc.preferredContentSize = CGSize(width: 480, height: 640)
  PlaygroundPage.current.liveView = mvc
