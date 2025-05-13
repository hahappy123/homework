# HEADER --------------------------------------------
#
# Author:     zhang-yj
# Copyright     Copyright 2025 - zhang-yj
# Email:      3045382472@qq.com
#
# Date:     2025-03-14
#
# Script Description:    eco-class
#
# SETUP ------------------------------------
cat("\014")                 # Clears the console
rm(list = ls())             # Remove all variables of the work space
#在RStudio中开启R script新文件，通过CRAN库安装tidyverse包，按照规范，写一段代码，完成查找包、安装包和查看包
install.packages("tidyverse")#安装包
library(tidyverse)#加载包
packageDescription("tidyverse")#查看包
