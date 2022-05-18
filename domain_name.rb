def domain_name(url)
  
  return "method domain_name require string url" unless (url.is_a?String and url.size > 0)  
  inicio = ["https://","http://","www."]
  domain = ''
  inicio.each do |x| 
    url.gsub!(x,"") if url.include?(x) 
  end
  url.each_char do |y|
     break if y == "."
     domain += y     
  end
  return domain

end

print domain_name(3)