require "rubygems"
require "sinatra"

class Integer
  def in_words
    single = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]  
    tens = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    if self < 20
      single[self]
    elsif self >= 20 && self < 100
      tens[self / 10] + " " + single[(self) - ((self / 10) * 10)]
    elsif self >= 100 && self < 1000
      if self == 100
        "one hundred"
      else
        #single[(self / 100)] + " hundred " + tens[(self - (self / 100) * 100) / 10] + " " + single[(self) - ((self / 10) * 10)].to_s
        single[(self / 100)] + " hundred " + (self%100).in_words
      end
    else
      big = %w(thousand million billion trillion).unshift("","")
      a = []
      self.to_s.split('').reverse.each_slice(3) do |chunk|
        a << chunk.reverse.join()
      end
      a.reverse!
      (a.first.to_i.in_words.strip + " " + big[ a.length ] + " " + a[1..-1].join.to_i.in_words.strip).strip
    end
  end
end

get '/' do
  " <html>
    <body>
      <form action='/in_words'>
        <input type='text' name='number'>
        <input type='submit'>
      </form>
    </body>
  </html>
  "
end

get '/in_words' do
  params[:number].to_i.in_words
end