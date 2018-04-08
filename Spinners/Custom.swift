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

class Custom {
    
    private var imageName: String!
    
    public init(imageName: String) {
        
        self.imageName = imageName
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
        
        return [animationOne]
    }
    
    public func setup() -> UIImageView {
        
        let imageView: UIImageView = {
            let view = UIImageView()
            view.frame.size = CGSize(width: 50, height: 50)
            view.center = CGPoint(x: 0, y: 0)
            view.backgroundColor = UIColor.clear
            view.image = UIImage(named: self.imageName)
            view.layer.add(animations()[0], forKey: nil)
            return view
        }()
        
        return imageView
    }
    
}
