//
//  ViewController.swift
//  ImgView
//
//  Created by kishore-pt5557 on 02/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView = UIImageView(image: UIImage(named: "house"), highlightedImage: UIImage(named: "snow"))
    let animatedImageView = UIImageView(frame: CGRect(x: 10, y: 450, width: 300, height:300))

    override func viewDidLoad() {
        super.viewDidLoad()
         
        view.addSubview(imageView)
        view.addSubview(animatedImageView)

        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageTapped)))
        imageView.frame = CGRect(x: 10, y: 40, width: 300, height: 300)

        animatedImageView.isUserInteractionEnabled = true
        animatedImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animatedImageTapped)))
        animatedImageView.animationImages = [UIImage(named: "sunset")!, UIImage(named: "stars")!]
        animatedImageView.highlightedAnimationImages = [UIImage(named: "snow")!, UIImage(named: "house")!]
        animatedImageView.animationDuration = 2
        // animatedImageView.animationRepeatCount = 2
        animatedImageView.startAnimating()
        
        
        
        let activityIndicatorView = UIActivityIndicatorView(frame: CGRect(x: 50, y: 300, width: 200, height: 200))
        view.addSubview(activityIndicatorView)
        
        activityIndicatorView.startAnimating()
        activityIndicatorView.style = .large
        
        
        
    }

    @objc func imageTapped(_ sender: UITapGestureRecognizer) {
        imageView.isHighlighted = !imageView.isHighlighted
    }
    
    @objc func animatedImageTapped(_ sender: UITapGestureRecognizer) {
        animatedImageView.isHighlighted = !animatedImageView.isHighlighted
        animatedImageView.startAnimating()
    }
}

