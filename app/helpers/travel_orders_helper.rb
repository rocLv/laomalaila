module TravelOrdersHelper
  def style_by_state(order)
    return false unless order

    case order.status.to_sym
    when :modifiable then 'panel panel-primary'
    when :submitted  then 'panel panel-success'
    when :confirmed  then 'panel panel-warning'
    when :planned    then 'panel panel-danger'
    when :ongoing    then 'panel panel-info'
    when :finished   then 'panel panel-default'
    when :failed     then 'panel panel-default'
    end
  end
end
