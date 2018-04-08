# Spinners

### Methods
|     Type              | Function | Description |
| --------------------- | ------------- | ------------- | 
|         ```void```          | ```present()```  | Shows the spinner to ViewController
|         ```void```         | ```remove()``` | Removes the spinner from ViewController
|         ```void```         | ```setCustomImage(with: <image_name>)``` | Adds custom image for custom type spinner
|         ```void```         | ```setCustomSettings(borderColor: <UIColor>, backgroundColor: <UIColor>, alpha: <CGFloat>)``` | Set color scheme of spinners



# Manual Install
Download the repository and drag to your project files



# Installation with Cocoapods
Create a Podfile in your project directory and add ```pod 'Spinners'``` to podfile.
```
pod 'Spinners'
```


# Usage

### 1) Initializing

Import the ```Spinners``` module

```
import Spinners
```

Create an instance of the Spinners class. The Spinners class has 2 parameters. <br>
```type``` is the type of spinner you want. <br>
```ViewController``` is your main ViewController

```
var spinners: Spinners!

override func viewDidLoad() {
  super.viewDidLoad()
  
  spinners = Spinners(type: <type>, with: self)

}
```

### 1) Show

Show the spinner when processing is occured. 

```
spinners.present()
```

### 2) Remove

Remove the spinner when process is finished
```
spinners.dismiss()
```

### 3) Customize

You can change the color of the spinners to match your application color scheme.

```
spinners.setCustomSettings(borderColor: <UIColor>, backgroundColor: <UIColor>, alpha: <CGFloat>)
```

### 4) Custom type
When selecting a custom type spinner, you must set the type of image you want as your spinner.

```
spinners.setCustomImage(with: <image_name>)
```

# Spinners • Developed By Cyril
