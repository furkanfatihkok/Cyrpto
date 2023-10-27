//
//  PortfolioDataService.swift
//  CyrptoApp
//
//  Created by FFK on 7.10.2023.
//

import Foundation
import CoreData

class PortfolioDataService {
    
    private let container: NSPersistentContainer
    private let containerName: String = "PortfolioContainer"
    private let entityName: String = "PortfolioEntity"
    
    @Published var savedEntities: [PortfolioEntity] = [] 
    
    init() {
        container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores { (_, error) in
            if let error = error {
                print("Error loading Core Data! \(error)")
            }
            self.getPortfolio()
        }
    }
    
    // MARK: - Public Func
    
    func updatePortfolio(coin: CoinModel, amount: Double) {
        
        if let entity = savedEntities.first(where: { $0.coinID == coin.id }) {
            
            if amount > 0 {
                update(entity: entity, amount: amount)
            } else {
                delete(entity: entity)
            }
        } else {
            add(coin: coin, amount: amount)
        }
        
//        if let entity = savedEntities.first(where: { (savedEntity) -> Bool in
//            return savedEntity.coinID = coin.id
//        })
    }
    
    
    // MARK: - Private Func
    
    private func getPortfolio() {
    
        let request = NSFetchRequest<PortfolioEntity>(entityName: entityName)
        
        do {
            savedEntities = try container.viewContext.fetch(request)
        } catch let error  {
            print("Error fetching Portfolio Request \(error)")
        }
        
    }
    
    private func add(coin: CoinModel, amount: Double) {
        
        let entity = PortfolioEntity(context: container.viewContext)
        entity.coinID = coin.id
        entity.amount = amount
    }
    
    private func update(entity: PortfolioEntity , amount: Double) {
        
        entity.amount = amount
        applyChanges()
    }
    
    private func delete(entity: PortfolioEntity) {
        
        container.viewContext.delete(entity)
        applyChanges()
    }
    
    private func save() {
        
        do {
            try container.viewContext.save()
        } catch let error {
            print("Error saving to Core Data \(error)")
        }
    }
    
    private func applyChanges() {
        save()
        getPortfolio()
    }
}
