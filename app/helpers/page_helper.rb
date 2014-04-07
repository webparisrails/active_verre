module PageHelper
  def titre
    base = "Active Verre"
    if @titre.nil?
      base
    else
      "#{base} | #{@titre}"
    end
  end
end
