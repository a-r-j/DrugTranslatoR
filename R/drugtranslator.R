#' @import jsonlite
#' @import RCurl
#' @importFrom utils URLencode
#'
#' @title Translate between identifiers
#' @description Translates drug/chemical IDs between a variety of standard
#' @param from Source format. string. Valid list can be obtained by calling sourceIDs
#' @param to Target format. string. Valid list can be obtained by calling targetIDs
#' @param query Identifier to be translated. string.
#' @return Target identifier
#' @keywords translate
#' @export
#' @examples
#'

translateDrugID = function(from, to, query) {
  query_url = paste0('https://cts.fiehnlab.ucdavis.edu/rest/convert/', URLencode(from), '/', URLencode(to), '/', URLencode(query))
  unlist(fromJSON(getURL(query_url))$results)
}

#' @title Obtain Valid Source IDs
#' @import jsonlite
#' @import RCurl
#' @importFrom utils URLencode
#' @description Produce list of valid source IDs that can be translated from.
#' @keywords translate, source
#' @return list of source IDs
#' @export
#' @examples
#' sourceIDs

sourceIDs = function(){
  query_url = "https://cts.fiehnlab.ucdavis.edu/rest/fromValues"
  unlist(fromJSON(getURL(query_url)))
}

#' @title Obtain Valid Source IDs
#' @import jsonlite
#' @import RCurl
#' @importFrom utils URLencode
#' @description Produce list of valid source IDs that can be translated to.
#' @keywords translate, target
#' @return list of target IDs
#' @export
#' @examples fromVals
#' targetIDs

targetIDs = function() {
  query_url = 'https://cts.fiehnlab.ucdavis.edu/rest/toValues'
  unlist(fromJSON(getURL(query_url)))
}

#' @title Expand compact chemical formula
#' @import jsonlite
#' @import RCurl
#' @importFrom utils URLencode
#' @description Expands compact chemical formula. Eg H20 to HHO
#' @keywords expand, chemical, formula
#' @param formula Formula to be expanded. String.
#' @return string. Expanded chemical formula
#' @export
#' @examples
#'

expandChemicalFormula = function(formula) {
  query_url = paste0('https://cts.fiehnlab.ucdavis.edu/rest/expandformula/', URLencode(formula))
  unlist(fromJSON(getURL(query_url)))
}

#' @title Convert InChIKey to molecule definition (MDL/SDF)
#' @import jsonlite
#' @import RCurl
#' @importFrom utils URLencode
#' @param inchikey Query InChIKey. String
#' @keywords molecule, defininition
#' @export
#' @examples


InChIKey2MolDef = function(inchikey) {
  query_url = paste0('https://cts.fiehnlab.ucdavis.edu/rest/convert/', URLencode(inchikey))
  unlist(fromJSON(getURL(query_url)))
}

#' @title Count biological IDs for InChIKey
#' @import jsonlite
#' @import RCurl
#' @importFrom utils URLencode
#' @param inchikey Query InChIKey. String
#' @keywords biological, ID
#' @export
#' @examples

countBiologicalIDs = function(inchikey) {
  query_url = paste0('https://cts.fiehnlab.ucdavis.edu/rest/countBiological/', URLencode(inchikey))
  unlist(fromJSON(getURL(query_url)))
}

#' @title Get a list of scored InChIKeys
#' @import jsonlite
#' @import RCurl
#' @importFrom utils URLencode
#' @param from Source ID type. String.
#' @param to Target ID type. String
#' @param algorithm Algorithm to use. Either 'biological' or 'popularity'
#' @keywords molecule, defininition
#' @export
#' @examples

scoredInCHIKeys = function(from, query, algorithm) {
  query_url = paste0('https://cts.fiehnlab.ucdavis.edu/rest/score/', URLencode(from), '/', URLencode(query), '/', URLencode(algorithmlib))
  unlist(fromJSON(getURL(query_url)))
}
