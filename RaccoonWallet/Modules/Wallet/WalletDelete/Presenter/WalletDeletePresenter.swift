//
//  WalletDeletePresenter.swift
//  RaccoonWallet
//
//  Created by Taizo Kusuda on 2018/08/28.
//  Copyright © 2018年 T TECH, LIMITED LIABILITY CO. All rights reserved.
//

import Foundation

class WalletDeletePresenter : BasePresenter {
    weak var view: WalletDeleteView?
    var interactor: WalletDeleteUseCase!
    var router: WalletDeleteWireframe!
    var wallet: Wallet!

    override func viewDidLoad() {
        view?.showWallet(wallet)
    }
}

extension WalletDeletePresenter : WalletDeletePresentation {
    func didClickRemove() {
        WalletStorage.shared.remove(by: wallet.id)
        router.goBackToWalletSelect()
    }

    func didClickCancel() {
        router.goBack()
    }

}

extension WalletDeletePresenter : WalletDeleteInteractorOutput {
    
}
