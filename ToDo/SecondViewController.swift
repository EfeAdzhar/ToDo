//  ViewControllerTwo.swift
//  ToDo
//  Created by Efe on 28.09.2021.
import UIKit

class SecondViewController: UIViewController {
//MARK: METHOD
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var errorButton: UIButton!
    var backgroundColor : UIColor!
    var interestingButton = UIButton()
    var picker = UIPickerView()
//MARK: UIViewController Lifecycle
    override class func awakeFromNib() {
        print("awakeFromNib")
    }
//MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        //Switch Colors
        self.mySwitch.tintColor = UIColor.green
        self.mySwitch.thumbTintColor = UIColor.red
        
        //Targeting
        self.mySwitch.addTarget(self, action: #selector(mySwitchAction(_:)), for: .valueChanged)
        
        //Saving errorButtons backgorund Color
        backgroundColor = errorButton.backgroundColor
        
        //Creating interesting button
        self.interestingButton.frame = CGRect(x: 150, y: 600, width: 200, height: 70)
        self.interestingButton.backgroundColor = UIColor.red
        self.interestingButton.setTitle("Button is Not Pressed", for: .normal)
        self.interestingButton.setTitle("Button is Pressed :D", for: .highlighted)
        self.view.addSubview(self.interestingButton)
        
        //Creating Picker
        self.picker.frame = CGRect(x: 150, y: 700, width: 200, height: 200)
        self.view.addSubview(picker)
        picker.dataSource = self
        picker.delegate = self
    }
//MARK: UIViewController Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
    }
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransition")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }

//MARK: Back Button Pressed
    @IBAction func backButtonPressed(_ sender: UIButton) {
        print("i'm back")
       dismiss(animated: true)
    }
//MARK: Error Button Pressed
    @IBAction func errorButtonPressed(_ sender: UIButton) {
        errorButtonOne(title: "Suprice, it's an error :)", message: "What's your problem?", style: .alert)
}
//MARK: Error Functions
    func errorButtonOne(title : String, message : String, style : UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action1 = UIAlertAction(title: "my bad", style: .default)
//If person presses "not ok", he will go back to mainViewController
        let action2 = UIAlertAction(title: "not ok", style: .cancel) { action2 in
            self.dismiss(animated: true)
        }
//Adding some stuff
        alertController.addAction(action1)
        alertController.addAction(action2)
        self.present(alertController, animated: true, completion: nil)
    }
//MARK: Deleting or Returning Error Button BackGround Color
    @IBAction func mySwitchAction(_ sender: UISwitch) {
        if !sender.isOn {
            errorButton.backgroundColor = nil
        } else {
            errorButton.backgroundColor = backgroundColor
        }
    }
}

extension SecondViewController : UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
}

extension SecondViewController : UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let result = "row:\(row+1)"
        return result
    }
}
