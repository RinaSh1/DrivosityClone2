
//  DriveScoreView.swift
//  Homework1
//
//  Created by Rina Shabani on 15.11.22.
//

import UIKit

@IBDesignable class DriveScoreView: UIView {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet var view: UIView!
    //intializer for code
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewInit()
    }
    
    //initializer gets called when you initialize this class in a storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        viewInit()
    }
    
    func viewInit(){
        view = loadViewFromNib(nibName: "DriveScoreView")
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.frame = self.bounds
       
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = false
        view.clipsToBounds = true
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowOpacity = 0.7
        view.layer.shadowRadius = 2.0
        
        view1.layer.cornerRadius = 5
        view3.layer.cornerRadius = 5
        view3.layer.borderWidth = 0.5
        view3.layer.borderColor = UIColor.black.cgColor
        view2.layer.cornerRadius = 5
        view4.layer.cornerRadius = 5
       

        addSubview(view)
    }
    
    func loadViewFromNib(nibName: String) -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
}
