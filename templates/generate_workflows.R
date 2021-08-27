files <- grep("test_", list.files(".github/workflows"), value = TRUE, fixed = TRUE)
pkgs <- gsub("test_([[:alnum:]]+)\\..*", "\\1", files)
for (f in seq_along(files)) {
 file <- readLines("templates/test_template.yml")
 cat(gsub("<package>", pkgs[[f]], file), file = file.path(".github/workflows", files[[f]]), sep = "\n")
}