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
/**
 Spinner class will give you access to different types of custom activity indicators
 
 - Version: 1.0
 - Author: Cyril Garcia
 
 
 */
public class Spinners: SpinnerView {
    
    // The selected spinner type
    private var type: SpinnerType!
    
    // The main ViewController where spinner will be displayed
    private var ViewController: UIViewController!
    
    // Checks if the spinner has been presented or not
    private var isPresented: Bool?
    
    /**
    Spinner types
     
     - bubble: Has two UIViews that spin in opposite directions. Default color is baby blue.
     - cube: Has two UIViews with transparent backgrounds rotating in opposite directions. Default color is baby blue.
     - wheel: Circuluar dotted UIView that rotates clockwise
     - custom: custom requieres you to set an image of your choice in which would rotate clockwise
     */
    
    public enum SpinnerType {
        /// Bubble effect
        case bubble
        /// Cube effect with rounded corners
        case cube
        /// Spinning dotted wheel
        case wheel
        /// Custom image that will rotate
        case custom
    }
    
    /**
     Main method. It is recommended that you use the Spinner(type: SpinnerType, with ViewController: UIVIewController) method otherwise,
     you must set the main ViewController and select the type of Spinners.

     */
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.isPresented = false
    }
    
    /**
     something
     */
    public convenience init(type: SpinnerType, with ViewController: UIViewController) {
        self.init()
        
        self.type = type
        self.ViewController = ViewController
        self.isPresented = false
        
    }
    
    /**
     Call to show the spinner whenever appropriate.
    */
    
    public func present() {
        if isPresented == false {
            selection()
        }
    }
    
    /**
     Call to remove the spinner when processing is done.
     */
    
    public func dismiss() {
        if isPresented == true {
            self.removeViews()
            self.isPresented = false
        }
    }
    
    /**
     Private function to select appropriate spinner to display
     */
    
    private func selection() {
        
        switch type {
        case .wheel:
            wheel()
        case .cube:
            cube()
        case .bubble:
            bubble()
        case .custom:
            custom()
        default:
            wheel()
        }
        
        self.center = self.ViewController.view.center
        self.ViewController.view.addSubview(self)
        self.isPresented = true
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
