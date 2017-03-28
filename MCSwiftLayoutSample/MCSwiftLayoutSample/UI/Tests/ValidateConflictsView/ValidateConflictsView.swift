//
//  ValidateConflictsView.swift
//  MCLayoutExample
//
//  Created by DION, Luc (MTL) on 2017-02-23.
//  Copyright (c) 2017 Mirego. All rights reserved.
//
import UIKit

class ValidateConflictsView: UIView {
    private let topLeftView = UIView()
    
    init() {
        super.init(frame: .zero)
        
        backgroundColor = .white
        
        addSquare(topLeftView, color: .green)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    fileprivate func addSquare(_ view: UIView, color: UIColor) {
        view.backgroundColor = color
        view.pin.width(50).height(50)
        addSubview(view)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        topLeftView.pin.right(10).width(20).top(10).left(10).left(10)
     }
}
