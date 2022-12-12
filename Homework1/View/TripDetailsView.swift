//
//  TripDetailsView.swift
//  Homework1
//
//  Created by Rina Shabani on 7.12.22.
//

import UIKit

class TripDetailsView: UIView {
    
    @IBOutlet var View: UIView!
    
    
    //intializer for code
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        viewInit()
    }
    
    func viewInit(){
        View = loadViewFromNib(nibName: "TripDetailsView")
        View.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        View.frame = self.bounds
        
        addSubview(View)
        
    }
    
    func loadViewFromNib(nibName: String) -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
  
}
