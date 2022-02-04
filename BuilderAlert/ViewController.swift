//
//  ViewController.swift
//  BuilderAlert
//
//  Created by Nabin Shrestha on 04/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let showAlertButton: UIButton = {
        let button = UIButton(frame: .init(origin: .zero, size: .init(width: 300, height: 45)))
        button.setTitle("Show Alert", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(showAlertButtonTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(showAlertButton)
        showAlertButton.center = view.center
    }
    
    @objc
    func showAlertButtonTapped(_ sender: UIButton) {
        AlertBuilder(viewController: self)
            .withTitle("Information")
            .andMessage("This alert is being shown using AlertBuilder")
            .preferredStyle(.alert)
            .onSuccessAction(title: "OK", { _ in
                print("OK tapped")
            })
            .onCancelAction(title: "Cancel", { _ in
                print("Cancel tapped")
            })
            .show()
    }
}
