#' Retrieves names of lists from list.design
#'
#' @export
#' @importFrom magrittr "%>%"
#' @importFrom rvest html_nodes html_text
#' @importFrom xml2 read_html
#'
#' @examples
#' stuff()
stuff <- function() {
  lists_of_things <- xml2::read_html("http://lists.design/")
  list_of_stuff <- lists_of_things %>%
    rvest::html_nodes(".gridList li h1") %>%
    rvest::html_text() %>%
    as.character()

  list_of_stuff
}

#' Retrieves the contents of a named list from list.design
#'
#' @param stuff name of the list you'd like to retrieve
#' @param json Set as TRUE if you want unparsed JSON
#'
#' @return `data.frame`
#' @export
#'
#' @examples
#' library(magrittr)
#' stuff() %>% .[[1]] %>% get_list()
get_list <- function(stuff, json = FALSE) {
  clean_stuff <- tolower(gsub(" |\\(|\\)", "",stuff))
  d <- readLines(paste0("http://lists.design/download.php?list=", clean_stuff))
  ifelse(json, d, jsonlite::fromJSON(d))
}

