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

public class SpinnerView: UIView {
    
    /**
     Image name for custom spinner style.
     */
    
    private var imageName: String?
    
    /**
     Holds all the views required for specific spinner type.
     */
    
    private var views: [UIView]!
    
    /**
     Styles object for customization.
     */
    
    private var settings: (borderColor: UIColor, backgroundColor: UIColor, alpha: CGFloat)!
    
    /**
     Called when custom setting was not declared by the developer.
     */
    
    private func defaultCustomSettings(borderColor: UIColor, backgroundColor: UIColor, alpha: CGFloat) -> (borderColor: UIColor, backgroundColor: UIColor, alpha: CGFloat){
        return (borderColor, backgroundColor, alpha)
    }
    
    /**
     Call to customize the spinner
     
     - Parameters:
        - borderColor: Sets the border color of the spinner.
        - backgroundColor: Sets the background color of the spinner.
        - alpha: Sets the opacity of the spinner.
     */
    
    public func setCustomSettings(borderColor: UIColor, backgroundColor: UIColor, alpha: CGFloat) {
        self.settings = (borderColor, backgroundColor, alpha)
    }
    
    /**
     Called when custom setting was not declared by the developer.
     */
    
    public func setCustomImage(with imageName: String) {
        self.imageName = imageName
    }
    
    public func wheel() {
        let wheel = Wheel()

        if let settings = self.settings {
            wheel.customSetup(settings: settings)
        } else {
            let borderColor = UIColor(red: 112/255, green: 166/255, blue: 255/255, alpha: 0.80)
            
            let customSettings = defaultCustomSettings(borderColor: borderColor, backgroundColor: UIColor.clear, alpha: 0.80)
            wheel.customSetup(settings: customSettings)

        }
        
        self.views = wheel.createViews()
        self.addViews(with: wheel.createViews())
    }

    public func bubble() {
        let bubble = Bubble()
        
        if let settings = self.settings {
            bubble.customSetup(settings: settings)
        } else {
            let color = UIColor(red: 112/255, green: 166/255, blue: 255/255, alpha: 0.80)

            let customSettings = defaultCustomSettings(borderColor: UIColor.clear, backgroundColor: color, alpha: 0.80)
            bubble.customSetup(settings: customSettings)
        }
        self.views = bubble.createViews()
        self.addViews(with: bubble.createViews())
    }

    public func cube() {
        let cube = Cube()
        
        if let settings = self.settings {
            cube.customSetup(settings: settings)
        } else {
            let color = UIColor(red: 112/255, green: 166/255, blue: 255/255, alpha: 0.80)
            let customSettings = defaultCustomSettings(borderColor: color, backgroundColor: UIColor.clear, alpha: 1.0)
            cube.customSetup(settings: customSettings)
        }
        
        self.views = cube.createViews()
        self.addViews(with: cube.createViews())
    }
    /**
     Called when custom setting was not declared by the developer.
     */
    public func custom() {
        
        if let imageName = self.imageName {
            let custom = Custom(imageName: imageName)
            self.addViews(with: [custom.setup()])
        } else {
            print("Error: - Custom Image is nil. Call the setCustomImage() function to set your custom image in your ViewController class")
            print(self.imageName!)
        }
    }
    /**
     Called to add spinner to views
     */
    private func addViews(with views: [UIView]) {
        for view in views {
            self.addSubview(view)
        }
    }
    
    /**
     Called to remove spinners
     */
    public func removeViews() {
        for view in self.subviews {
            view.removeFromSuperview()
        }
        self.removeFromSuperview()
    }
    
}
