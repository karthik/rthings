
<!-- README.md is generated from README.Rmd. Please edit that file -->
rthings
=======

[![Travis-CI Build Status](https://travis-ci.org/karthik/rthings.svg?branch=master)](https://travis-ci.org/karthik/rthings) [![codecov](https://codecov.io/gh/karthik/rthings/branch/master/graph/badge.svg)](https://codecov.io/gh/karthik/rthings) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/rthings)](https://cran.r-project.org/package=rthings) [![Licence](https://img.shields.io/github/license/mashape/apistatus.svg)](http://choosealicense.com/licenses/mit/) ![](http://cranlogs.r-pkg.org/badges/rthings)

This package is a thin wrapper around [`list.design`](http://lists.design/). The website says: *Lists a gallery of real data ready to be placed in your design.* So if you need a random list of things to populate an example or a demo, here goes. 📋

``` r
library(rthings)
(x <- stuff())
#>  [1] "Address (France)"         "Address (Germany)"       
#>  [3] "Address (Spain)"          "Address (United Kingdom)"
#>  [5] "Address (United States)"  "Adjectives"              
#>  [7] "Animals"                  "Books"                   
#>  [9] "Calendar"                 "Car Brands"              
#> [11] "Celebrities"              "Cities"                  
#> [13] "Colleges"                 "Colors (Name)"           
#> [15] "Colors (Hex)"             "Colors (rgb)"            
#> [17] "Companies"                "Countries"               
#> [19] "Currencies"               "Dates (dd mm y)"         
#> [21] "Dates (mm-dd-y)"          "Dates (mm/dd/y)"         
#> [23] "Email Addresses"          "Email Subjects"          
#> [25] "Food"                     "Jobs"                    
#> [27] "Movies"                   "Names (World)"           
#> [29] "Names (France)"           "Names (Germany)"         
#> [31] "Names (Spain)"            "Names (United Kingdom)"  
#> [33] "Names (United States)"    "Navigation"              
#> [35] "Numbers (0-0.99)"         "Numbers (0-99)"          
#> [37] "Numbers (100-999)"        "Numbers (1000+)"         
#> [39] "Objects"                  "Prices ($ / 0-0.99)"     
#> [41] "Prices ($ / 0-99)"        "Prices ($ / 100-999)"    
#> [43] "Prices ($ / 1000+)"       "Prices (€ / 0-0,99)"     
#> [45] "Prices (€ / 0-99)"        "Prices (€ / 100-999)"    
#> [47] "Prices (€ / 1000+)"       "Prices (£ / 0-0.99)"     
#> [49] "Prices (£ / 0-99)"        "Prices (£ / 100-999)"    
#> [51] "Prices (£ / 1000+)"       "Questions"               
#> [53] "Recipes"                  "Restaurants"             
#> [55] "Songs"                    "Sports"                  
#> [57] "Startup Pitches"          "Time (12h)"              
#> [59] "Time (am/pm)"             "To-do List"              
#> [61] "TV Shows"                 "URLs"                    
#> [63] "Usernames"                "Video Games"             
#> [65] "Videos"                   "Weather"                 
#> [67] "Websites"                 "Words"
```

and if you want to get a list of say random Companies, then:

``` r
library(tidyverse)  
x %>% .[which(x == "Companies")] %>% get_list()
#> [[1]]
#>                              data
#> 1                            Audi
#> 2                  Facebook, Inc.
#> 3               Johnson & Johnson
#> 4                General Electric
#> 5              Oracle Corporation
#> 6                      Siemens AG
#> 7                       Pizza Hut
#> 8         The Walt Disney Company
#> 9                      MasterCard
#> 10                Bank of America
#> 11                        Ferrari
#> 12                           eBay
#> 13                  Louis Vuitton
#> 14                        L'Oréal
#> 15                        Kleenex
#> 16                       Gillette
#> 17                     Mitsubishi
#> 18                       Nintendo
#> 19                        Allianz
#> 20                     McDonald's
#> 21       Ralph Lauren Corporation
#> 22                       Burberry
#> 23                           AT&T
#> 24                      Starbucks
#> 25                         Sprite
#> 26                        Hyundai
#> 27                  Jack Daniel's
#> 28                           Sony
#> 29                           IKEA
#> 30                Moët et Chandon
#> 31                          Nokia
#> 32                            KFC
#> 33                            IBM
#> 34                  Mercedes-Benz
#> 35                           Beko
#> 36                             3M
#> 37                  Adobe Systems
#> 38                        Porsche
#> 39                           Zara
#> 40                         Google
#> 41                          Xerox
#> 42                        PepsiCo
#> 43                         Adidas
#> 44                       Wal-Mart
#> 45         Nissan Motor Co., Ltd.
#> 46                          Canon
#> 47                           Avon
#> 48                        Pampers
#> 49                       NTT Data
#> 50                 Johnnie Walker
#> 51                            BMW
#> 52               American Express
#> 53          United Parcel Service
#> 54                    Wells Fargo
#> 55       Honda Motor Company, Ltd
#> 56                            MTV
#> 57                Deere & Company
#> 58                            SAP
#> 59                         Hermès
#> 60                         Yahoo!
#> 61              Intel Corporation
#> 62                          Prada
#> 63                  Credit Suisse
#> 64                     Kia Motors
#> 65                      Microsoft
#> 66              Tesco Corporation
#> 67       Toyota Motor Corporation
#> 68                     Nike, Inc.
#> 69               Caterpillar Inc.
#> 70  Harley-Davidson Motor Company
#> 71                          Chase
#> 72            Cisco Systems, Inc.
#> 73 Budweiser Stag Brewing Company
#> 74                        Nescafé
#> 75                     Apple Inc.
#> 76                     Cartier SA
#> 77                Kellogg Company
#> 78                       Gap Inc.
#> 79                      Coca-Cola
#> 80                            H&M
#> 81               Heineken Brewery
#> 82                  Samsung Group
#> 83                         Corona
#> 84                 Morgan Stanley
#> 85                      Citigroup
#> 86                     Amazon.com
#> 87                           HSBC
#> 88                          Gucci
#> 89                       Smirnoff
#> 90                     Home Depot
#> 91                     BlackBerry
#> 92                       Vodafone
#> 93                           VISA
#> 94                Hewlett-Packard
#> 95          Panasonic Corporation
#> 96                  Tiffany & Co.
#> 97              Shell Oil Company
#> 98               Volkswagen Group
#> 99         Verizon Communications
```

That's it!
