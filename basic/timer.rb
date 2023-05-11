# プログラムの実行時間を計測するタイマークラス

class Timer
    def initialize
        @start = Time.now
    end

    def stop
        elapse = Time.now - @start
        hour = elapse / 3600
        minute = (elapse % 3600) / 60
        second = (elapse % 60)
        printf("%dhour %dminute %dsecond\n", hour, minute, second)
    end

    def wrap
        stop
        @start = Time.now
    end
end

if __FILE__ == $0
    # 計測開始
    timer = Timer.new

    if timer.class == Timer
        puts "This is Timer"
    else
        puts "This is not Timer"
    end

    signal=gets.chomp
    case signal
    when "red" then
        puts "Stop!"
    when "blue" then
        puts "Go!"
    when "yellow" then
        puts "Caution!"
    else
        puts "Wrong signal"
    end

    # ラップ
    timer.wrap

    for i in 1..10000
        if i > 9000
            break
        end
    end

    100.times do |i|
        if i % 15 == 0
            print "FizzBuzz"
        elsif i % 3 == "Fizz"
            print "Fizz"
        elsif i % 5 == 0
            print "Buzz"
        else
            print "#{i}"
        end
    end
    puts ""

    colors = ["red", "blur", "green", "yellow"]
    for color in colors
        print color + " "
    end

    for i in 0...colors.length
        print colors[i] + " "
    end

    colors.each do |color|
        print color + " "
    end
    puts ""

    for name, id in {"Mike": 0, "Ken": 1, "Mary": 2}
        printf("%d %s\n", id, name)
    end

    i = 0
    while i < 10000 do
        i += 1
        if i % 2 == 0
            next
        end
    end

    # 計測終了
    timer.stop
end
