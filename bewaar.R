

install.packages("usethis")
usethis::use_git_config(
  user.name  = "Bas Bakker",
  user.email = "bbakker@imf.org"
)


usethis::git_sitrep()

usethis::create_github_token()

usethis::use_package("AzureAuth")
usethis::use_package("rsdmx")
usethis::use_package("dplyr")
usethis::use_package("tibble")
usethis::use_package("stringr")
usethis::use_package("lubridate")
usethis::use_package("zoo")

usethis::use_package("usethis", type = "Suggests")






#====================

idata <- imf.bookr::idata


# Read all datasets into environment
myds <- imf.bookr::idata$metadata$make_dataset_env(needs_auth = T)



df<-imf.bookr::idata$metadata$imfdata_show_datasets(needs_auth = T)

mydims <- idata$metadata$get_dimension_names(myds$`National Economic Accounts (NEA), Annual Data`)
mydims

myindicators <- idata$metadata$make_dimension_env(myds$`National Economic Accounts (NEA), Annual Data`,"INDICATOR")
ls(myindicators)

mypricetypes=idata$metadata$make_dimension_env(myds$`National Economic Accounts (NEA), Annual Data`,"PRICE_TYPE")
ls(mypricetypes)


mytransforms=idata$metadata$make_dimension_env(myds$`National Economic Accounts (NEA), Annual Data`,"TYPE_OF_TRANSFORMATION")
ls(mytransforms)



mycountries = c("BRA","PAN")

mykey = list(
  mycountries,
  myindicators$`Exports of goods and services`,
  NULL,
  NULL,
  "A"
)

mykey

idata$helpers$make_key_str(mykey)

mydata<-imf.bookr::idata$retrieval$imfdata_by_key(dataset = myds$`National Economic Accounts (NEA), Annual Data`,
                                                  key = mykey,needs_auth = T)

head(mydata)




mydims <- idata$metadata$get_dimension_names(myds$`World Economic Outlook (WEO)`)
mydims

myindicators <- idata$metadata$make_dimension_env(myds$`National Economic Accounts (NEA), Annual Data`,"INDICATOR")
ls(myindicators)


