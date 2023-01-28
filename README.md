# RadioButton

A custom `RadioButton` class for iOS using `UIButton` that allows you to easily create radio buttons in your app.

## Features
 * Easily switch between selected and unselected states
* Closure-based callback to handle selection changes

## Usage
1. Create an instance of the RadioButton class and add it to your view 

```
let radioButton = RadioButton() { (isSelected) in
    // handle selection changes here
}

view.addSubview(radioButton)
```
## Customization
The default selected and unselecetd images are `checkmark.circle.fill` and `circle`
but You can customize the RadioButton class to fit your app's design by modifying the selectedImage and unSelectedImage properties.

```
class ViewController: UIViewController {

    let radioButton = RadioButton() { (isSelected) in
        // handle selection changes here
        if isSelected {
            print("Radio button is selected")
        } else {
            print("Radio button is not selected")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(radioButton)
        radioButton.translatesAutoresizingMaskIntoConstraints = false
        radioButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        radioButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        radioButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        radioButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        let selectedImage = UIImage(systemName: "checkmark.circle.fill")
        let unSelectedImage = UIImage(systemName: "circle")
        radioButton.setSelectedImage(selectedImage)
        radioButton.setUnSelectedImage(unSelectedImage)
    }
}

```

