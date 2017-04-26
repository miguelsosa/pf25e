module MonstersHelper
  def modifier(val)
    val ||= 10
    ret = (val - 10) / 2
    (ret >= 0) ? "+#{ret}" : "#{ret}"
  end

  def ability(val)
    mod = modifier(val)
    "#{val} #{mod}"
  end
end
