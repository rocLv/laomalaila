_hmt = _hmt || []
do ->
  hm = document.createElement('script')
  hm.src = '//hm.baidu.com/hm.js?789d09abf9d18b104c01d084dc3ae066'
  s = document.getElimentsByTagNage('script')[0]
  s.parentNode.insertBefore hm, s
  return
