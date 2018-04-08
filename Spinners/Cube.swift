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

class Cube: SpinnerDelegate {
        
    public override init() {
        super.init()
        self.setCenter(with: CGPoint(x: 0, y: 0))
        self.setSize(with: CGSize(width: 50, height: 50))
    }
    
    private func animations() -> [CABasicAnimation] {
        
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
        
        return [animationTwo, animationOne]
    }
    
    public func createViews() -> [UIView] {
        
        let innerView: UIView = {
            let view = UIView()
            view.frame.size = CGSize(width: 50, height: 50)
            view.center = getCenter()
            view.layer.cornerRadius = 15
            view.layer.borderColor = self.settings!.borderColor.cgColor
            view.backgroundColor = self.settings!.backgroundColor
            view.layer.borderWidth = 2
            return view
        }()
        
        let smallerView: UIView = {
            let view = UIView()
            view.frame.size = CGSize(width: 25, height: 25)
            view.center = getCenter()
            view.layer.cornerRadius = 15
            view.layer.borderColor = self.settings!.borderColor.cgColor
            view.backgroundColor = self.settings!.backgroundColor
            view.layer.borderWidth = 2
            return view
        }()
        
        let views = [innerView, smallerView]
        
        for i in 0..<animations().count {
            views[i].layer.add(animations()[i], forKey: nil)
        }
        
        return views
        
    }
    
    
    
}
