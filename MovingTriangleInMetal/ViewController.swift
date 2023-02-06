//
//  ViewController.swift
//  MovingTriangleInMetal
//
//  Created by HKBeast on 02/02/23.
//

import UIKit
import Metal
import MetalKit

class ViewController: UIViewController {
    @IBOutlet weak var mtkView: MTKView!
    var renderer: Renderer!

    override func viewDidLoad() {
        super.viewDidLoad()

        let device = MTLCreateSystemDefaultDevice()!
        renderer = Renderer(device: device, view: mtkView)
    }
}

