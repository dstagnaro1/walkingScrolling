//
//  ViewController.swift
//  walking scrolling
//
//  Created by Daniel Stagnaro on 6/16/16.
//  Copyright © 2016 Daniel Stagnaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    let WIDTH: CGFloat = 232
    let HEIGHT: CGFloat = 377
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for x in 0..<5 {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            imgView.frame = CGRectMake(60 + (WIDTH * CGFloat(x)), 190 , WIDTH, HEIGHT)
            
        }
        
        scrollView.contentSize = CGSizeMake(WIDTH * 5 + 80, scrollView.frame.size.height - 137)
        
    }


}

