library(yaml)
serveryaml <- list()
t <- read_yaml("server.yaml")
for(name in names(t)){
  if(name!="paths"){
    serveryaml[name] <- t[name]
  }
}

  serveryaml$paths <-list()
  for (file in list.files(path="../shelf", recursive=TRUE, pattern = "^(.*).yaml$", full.names = TRUE)) {

    y <- read_yaml(file)
    for(name in names(y$paths)){
      print(y$paths[name])
      serveryaml$paths[name] <- y$paths[name]
    }

  }

write_yaml(serveryaml, "generatedservice.yaml",  handlers = list(
  logical = function(x) {
    result <- ifelse(x, "true", "false")
    class(result) <- "verbatim"
    return(result)
  }))
