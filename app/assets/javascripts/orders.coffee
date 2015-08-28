# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  step = 1
  $('.previous').click (e) ->
    # 求的当前step id
    # 将下一个step设置为display
    # 如果是最后一个,跳转至订单信息
    return if step == 1
    $('#step-' + step).css('display','none').fadeOut()
    step = step - 1
    $('#step-' + step).css('display','true').fadeIn()
    if step == 6
      $('.next').html('<a href="#">下一页</a>')

  $('.next').click (e) ->
    return if step == 7
    $('#step-' + step).css('display', 'none').fadeOut()
    step = step + 1
    $('#step-' + step).css('display', 'true').fadeIn()

    if step == 7
      $('.next').html('<button name="preview" class="btn btn-success pull-right" type="submit">预览</button>')

  $('#travel_order_estimate_departure_time').datetimepicker()
  
  $('#travel_order_estimate_arrive_time').datetimepicker useCurrent: false //Important!
  
  $('#travel_order_estimate_departure_time').on 'db.change', ->(e)
    $('#travel_order_estimate_arrive_time').data('DateTimePicker').minDate(e.date)
    
  $('#travel_order_estimate_arrive_time').on 'db.change', ->(e)
    $('#travel_order_estimate_departure_time').data('DateTimePicker').maxDate(e.date)
    return
    

