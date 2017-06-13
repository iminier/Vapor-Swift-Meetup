

import FluentProvider

extension Config {
    public func setup() throws {
        
        // allow fuzzy conversions for these types
        // (add your own types here)
        Node.fuzzy = [JSON.self, Node.self] 

        try setupProviders() // setup providers in the project
    }
    
    /// Configure providers
    private func setupProviders() throws {
        
        try addProvider(FluentProvider.Provider.self)
    }
   
}
