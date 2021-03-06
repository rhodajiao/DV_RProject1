library("ggplot2")
library("gplots")
library("plyr")
library("RCurl")
library("reshape2")
library("grid")
customers <<- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from customers"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDB1.usuniversi01134.oraclecloud.internal', USER='DV_ORDERS', PASS='orcl', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))
items <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from items"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDB1.usuniversi01134.oraclecloud.internal', USER='DV_ORDERS', PASS='orcl', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))
orders <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from orders"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDB1.usuniversi01134.oraclecloud.internal', USER='DV_ORDERS', PASS='orcl', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))
order_details <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from order_details"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDB1.usuniversi01134.oraclecloud.internal', USER='DV_ORDERS', PASS='orcl', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))
df <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from orders o join customers c on o.customer_id = c.customer_id join order_details d on o.order_id = d.order_id join items i on d.item_id = i.item_id"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDB1.usuniversi01134.oraclecloud.internal', USER='DV_ORDERS', PASS='orcl', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))
#customers <<- c(4,6,8,9)
#items <<- c(7,5,8,3)
#orders <<- c(3,5,7,8)
#order_details <- c(3,6,8,44)
#customers
#items
#orders
#order_details

