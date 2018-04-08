//
//  Created by Cyril Garcia on 4/3/18.
//  Copyright © 2018 Cyril Garcia. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this software
//  and associated documentation files (the "Software"), to deal in the Software without restriction,
//  including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included
//  in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
//  INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
//  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

import UIKit

class Wheel: SpinnerDelegate {
    
    public override init() {
        super.init()
        self.setCenter(with: CGPoint(x: 0, y: 0))
    }
    
    private func animation() -> [CABasicAnimation] {
        
        let animationOne: CABasicAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation")
            animation.fromValue = 0.0
            animation.toValue = CGFloat(Double.pi * 2)
            animation.duration = 1.0
            animation.repeatCount = .infinity
            return animation
        }()
        
        let animationTwo: CABasicAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation")
            animation.fromValue = 0.0
            animation.toValue = CGFloat(Double.pi * 2) * -1
            animation.duration = 1.0
            animation.repeatCount = .infinity
            return animation
        }()
        
        let animationThree: CABasicAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation")
            animation.fromValue = 0.0
            animation.toValue = CGFloat(Double.pi * 2) * -1
            animation.duration = 2.0
            animation.repeatCount = .infinity
            return animation
        }()
        
        let animationFour: CABasicAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation")
            animation.fromValue = 0.0
            animation.toValue = CGFloat(Double.pi * 2)
            animation.duration = 0.75
            animation.repeatCount = .infinity
            return animation
        }()
    
        return [animationOne, animationTwo, animationThree, animationFour]
    }
    
    private func viewStyle(view: UIView) -> CAShapeLayer {
        let borderStyle = CAShapeLayer()
        borderStyle.strokeColor = UIColor.black.cgColor
        borderStyle.lineDashPattern = [2, 2]
        borderStyle.frame = view.bounds
        borderStyle.fillColor = nil
        borderStyle.path = UIBezierPath(roundedRect: view.frame, cornerRadius: view.frame.size.width / 2).cgPath
        
        return borderStyle
    }
    
    public func createViews() -> [UIView]{
        
        let outerLayer: UIView = {
            let view = UIView()
            view.frame.size = CGSize(width: 65, height: 65)
            view.backgroundColor = UIColor.clear
            view.center = self.getCenter()
            view.layer.cornerRadius = view.frame.size.width / 2
            view.layer.addSublayer(viewStyle(view: view))

            return view
        }()
    
        let middleLayer: UIView = {
            let view = UIView()
            view.frame.size = CGSize(width: 35, height: 35)
            view.backgroundColor = UIColor.clear
            view.center = self.getCenter()
            view.layer.cornerRadius = view.frame.size.width / 2
            view.layer.addSublayer(viewStyle(view: view))
            
            return view
        }()
        
        let innerLayer: UIView = {
            let view = UIView()
            view.frame.size = CGSize(width: 85, height: 85)
            view.backgroundColor = UIColor.clear
            view.center = self.getCenter()
            view.layer.cornerRadius = view.frame.size.width / 2
            view.layer.addSublayer(viewStyle(view: view))
            
            return view
        }()

        let smallerLayer: UIView = {
            let view = UIView()
            view.frame.size = CGSize(width: 15, height: 15)
            view.backgroundColor = UIColor.clear
            view.center = self.getCenter()
            view.layer.cornerRadius = view.frame.size.width / 2
            view.layer.addSublayer(viewStyle(view: view))
            
            return view
        }()
        
        let animations = animation()
        let views = [middleLayer,outerLayer,innerLayer,smallerLayer]
        
        for i in 0..<animations.count {
            views[i].layer.add(animations[i], forKey: nil)
        }
        
        return views
    }
    
}
