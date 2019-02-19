 # DrugTranslatoR
R package for translating between drug identifiers using the [Chemical Translation Service (CTS)](https://cts.fiehnlab.ucdavis.edu/)

# Details
Simple R wrapper to send HTTP requests to the CTS server.

# Usage
`translateDrugID(from, to, query)` - Translate between different drug/chemical identifiers  
`sourceIDs()` - Fetch list of valid identifies that can be translated from   
`targetIDs()` - Fetch list of valid identifiers that can be translated to    
`expandChemicalFormula(formula)` - Expands a compact chemical formula  
`InChIKey2MolDef(inchikey)` - Converts InChIKey to molecule definition (MDL/SDF)  
`countBiologicalIDs(inchikey)` - Counts biological IDs for InChIKey  
`scoredInChiKeys(from, query, algorithm)` - Gets a list of scored InChIKeys

# Reference:
> The Chemical Translation Service—a web-based tool to improve standardization of metabolomic reports. Gert Wohlgemuth, Pradeep Kumar Haldiya, Egon Willighagen, Tobias Kind, Oliver Fiehn. Bioinformatics, Volume 26, Issue 20, 15 October 2010, Pages 2647–2648, https://doi.org/10.1093/bioinformatics/btq476
