//
//  BrickExample.swift
//  AppDeveloperKit-Library
//
//  Created by Scott Carter on 11/21/17.
//

import UIKit

import AppDeveloperKit


// An example of subclassing a Library component (BrickBaseViewController) in order to provide a custom
// configuration.  Why might you do this?
//
// You may wish to use a Library component for different screens, but customize the appearance of
// each of the screens.
//
class BrickExample: BrickBaseViewController {

    // Can call adk_deinitBrickExample() from overriden func adk_deinit() or alternatively from
    // deinit.  Could also safely call adk_deinitBrickExample() from both places, though only the first
    // call has any effect.
    
    deinit {
//        adk_deinitBrickExample()
    }
    
    override func adk_deinit() {
        adk_deinitBrickExample()
    }
    
    override func adk_init() {
        adk_initBrickExample()
    }
    
}


