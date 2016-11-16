
import UIKit

@objc protocol LongPressButtonProtocol : class {
    
    @objc optional func longPressBegin(sender: UILongPressGestureRecognizer)
    @objc optional func longPressEnded(sender: UILongPressGestureRecognizer)
}

class LongPressButton: UIButton {
    
    weak var delegate: LongPressButtonProtocol?
    var viewBackGroundColor = UIColor.clear {
        didSet {
            colorBackgroundView.backgroundColor = viewBackGroundColor
            self.setTitleColor(viewBackGroundColor, for: .normal)
        }
    }
    
    private let animateDuration: TimeInterval = 1.4
    private var gesture: UILongPressGestureRecognizer!
    private let colorBackgroundView = UIView.init()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
        
    }
    
    private func setupView() {
        gesture = UILongPressGestureRecognizer.init(target: self, action: #selector(handleLongPress))
        self.addGestureRecognizer(gesture)
        
        self.isUserInteractionEnabled = false
        colorBackgroundView.backgroundColor = .green
        
        
        colorBackgroundView.alpha = 0
        self.layer.addSublayer(colorBackgroundView.layer)
        colorBackgroundView.makeInsetShadow(withRadius: 4.0, alpha: 0.2)
        
//        UIUtils.addCustomSubview(backgroundView, flushToSuper: self)
        
    }
    
    @objc private func handleLongPress(gesture: UILongPressGestureRecognizer) {
        
        switch gesture.state {
        case .began:
            print("b")
            startAnimation()
        case .ended, .cancelled:
            print("ee")
            endAnimation()
        default:
            print("dd")
            
        }
        
    }
    
    private func startAnimation() {
        UIView.animate(withDuration: animateDuration) {
            self.colorBackgroundView.alpha = 1
        }
    }
    
    private func endAnimation() {
        UIView.animate(withDuration: animateDuration) {
            self.colorBackgroundView.alpha = 0
        }
    }
}
