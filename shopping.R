
# --------------------------------------------------------------------------
# 쇼핑 가격 비교 상품 정보 수집
# 상품명, 가격, 리뷰수 데이터프레임으로 생성
# --------------------------------------------------------------------------

library(tidyverse) 
library(httr) 
library(rvest) 
kwd <- URLencode('블루투스 이어폰')
res <- GET(url = 'http://search.11st.co.kr/Search.tmall', 
           query = list(kwd = kwd,
                        method='getCatalogPrdSearch',
                        catalogYN='Y',
                        sortCd='CE' #후기많은순
           ))

items <- res %>% 
  read_html() %>% 
  html_nodes(css = '.total_listitem') 

prdNm <- items %>% 
  html_node(css = '.list_info a') %>% 
  html_text(trim = TRUE)

price <- items %>% 
  html_node(css = '.list_right .price_low .num') %>% 
  html_text(trim = TRUE) %>% 
  str_remove_all(pattern = ',') %>% 
  as.numeric() 

remove_these <- paste(c("리뷰","\\,","건"),collapse = "|")

rvCnt <- items %>% 
  html_node(css = '.info_btm > a.review') %>% 
  html_text(trim = TRUE) %>% 
  str_replace_all(pattern = remove_these, replacement='') %>%
  as.numeric() 

result <- data.frame(prdNm, price, rvCnt, stringsAsFactors = FALSE)

str(object = result)


