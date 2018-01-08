
// ====================================================
//
//              DO NOT EDIT.  Auto Generated.
//
// =====================================================
//

import AppDeveloperKit

extension BrickBaseViewController {

   func adk_deinitBrickBaseViewController() {

       let adk = ADK_Config.shared()

       adk.deregisterClass(sender: self)
   }

   func adk_initBrickBaseViewController() {

       let adk = ADK_Config.shared()

       weak var weakSelf: BrickBaseViewController? = self

       adk.registerClass(sender: self, name: "BrickBaseViewController")


       adk.configJSON(sender: self, name: "json", initComplete: { (data) in
           if data != nil {
               weakSelf?._json = data!
           }
       }, changeComplete: { (data) in
           if data != nil {
               weakSelf?.json = data!
           }
       })


       adk.configBool(sender: self, name: "horizontal", initComplete: { (data) in
           if data != nil {
               weakSelf?._horizontal = data!
           }
       }, changeComplete: { (data) in
           if data != nil {
               weakSelf?.horizontal = data!
           }
       })


   }
}


