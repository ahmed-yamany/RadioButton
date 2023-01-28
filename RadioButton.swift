import UIKit

class RadioButton: UIButton {
    var onSelected: (_ isSelected: Bool) -> Void = {_ in}
    var selectedImage = UIImage(systemName: "checkmark.circle.fill")
    var unSelectedImage = UIImage(systemName: "circle")
    
    
    init(onSelected: @escaping (_ isSelected: Bool) -> Void){
        super.init(frame: .zero)
        self.onSelected = onSelected
        
        setImage(unSelectedImage, for: .normal)
        setImage(selectedImage, for: .selected)
        addTarget(self, action: #selector(self.radioButtonTapped(_:)), for: .touchUpInside)
        
        translatesAutoresizingMaskIntoConstraints = false
        imageView?.translatesAutoresizingMaskIntoConstraints = false
        imageView?.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView?.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        imageView?.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView?.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func radioButtonTapped(_ sender: RadioButton) {
        isSelected.toggle()
        onSelected(isSelected)
    }
    
}
