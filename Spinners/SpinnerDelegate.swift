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

class SpinnerDelegate {
    
    public var settings: (borderColor: UIColor, backgroundColor: UIColor, alpha: CGFloat)?
    
    private var backgroundColor: UIColor?
    private var borderColor: UIColor?
    private var borderWith: CGFloat?
    private var cornerRadius: CGFloat?
    private var size: CGSize?
    private var loadingTextLabel: String?
    private var center: CGPoint?
    
    public func customSetup(settings: (borderColor: UIColor, backgroundColor: UIColor, alpha: CGFloat)) {
        self.settings = settings
    }
    public func setBackgroundColor(with backgroundColor: UIColor) {
        self.backgroundColor = backgroundColor
    }
    public func setBorderColor(with borderColor: UIColor) {
        self.borderColor = borderColor
    }
    public func setBorderWith(with borderWith: CGFloat) {
        self.borderWith = borderWith
    }
    public func setCornerRadius(with cornerRadius: CGFloat) {
        self.cornerRadius = cornerRadius
    }
    public func setSize(with size: CGSize) {
        self.size = size
    }
    public func setCenter(with center: CGPoint) {
        self.center = center
    }
    public func setLoadingTextLabel(with loadingTextLabel: String) {
        self.loadingTextLabel = loadingTextLabel
    }
    public func getBackgroundColor() -> UIColor {
        return self.backgroundColor!
    }
    public func getBorderColor() -> UIColor {
        return self.borderColor!
    }
    public func getBorderWidth() -> CGFloat {
        return self.borderWith!
    }
    public func getCornerRadius() -> CGFloat {
        return self.cornerRadius!
    }
    public func getSize() -> CGSize {
        return self.size!
    }
    public func getLoadingTextLabel() -> String {
        return self.loadingTextLabel!
    }
    public func getCenter() -> CGPoint {
        return self.center!
    }

}
