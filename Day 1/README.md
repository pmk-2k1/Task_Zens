--------------------DAY 1------------------------
  1. Có 6 loại dữ liệu: Number, String, Boolean, Array, Hashe, Symbol.
      Number bào gồm: interger, float,..
      Ví dụ: z=5
      e=5.0
      String:
      		ví dụ: s = “string trong Ruby”
      Boolean: true, false
      		ví dụ: x= true
      	Array: a = Array.new
      		b =[1,2,3,4,5]
      Hash: a = Hash.new
      		c = {:one =>1, :two=>2}
      Symbol: :user, :’age'
  2. Có 5 Variable Scope:
    • Class variable: bắt đầu bằng “@@”, các kí tự còn lại là chữ cái hoặc dấu “_”, được gọi trong class đó
    • Instance variable: bắt đầu bằng “@”, các kí tự còn lại là chữ cái hoặc dấu “_”, chỉ nằm trong phạm vi của Instance đó
    • Global variable: bắt đầu bằng “$” các kí tự còn lại là chữ cái hoặc dấu “_”, có thể gọi ở bất cứ đâu
    • Local variable: bắt đầu là chữ thường hoặc dấu “_”, các kí tự còn lại là chữ cái hoặc dấu “_”, dùng để gọi trong block hoặc method được định nghĩa.
    • Constant variable: tất cả các kí tự đều là chữ hoa,  dùng để gọi bên trong class / module đó, bên trong class / module được định nghĩa từ class / module ban đầu, bên trong module kế thừa hoặc include của class / module ban đầu. Bên ngoài cũng có thể tham chiếu được nếu thêm tiền tố là tên class / module
  3. Comment:
    • inline: dùng kí tự “#” ở đầu comment
    • multiline: bắt đầu bằng “=begin” và kết thúc bằng “=end"
  4. Blocks: là phương pháp gộp mã, nằm bên trong dấu {.....} hoặc do…..end. Ví dụ:
      array = [1,2,3,4]
    • dùng {....}
        array.map! do |n|
          n * n
        end
    • dùng do….end
        array.map! { |n| n * n }
    • Kết quả: [1,4,9,16]
  5. Hàm
      def sum(x,y)
	      x+y
      end
  6. Vòng lặp:
    • for:
      for i in 1..5
        puts “giá trị của i:  #{i}”
	    end
    • while:
      i=0
      while i<5 do
      	puts “giá trị của i:  #{i}”
      	i+=1
      end
  7. Điều kiện:
    if dieu_kien
      …
    elseif dieu_kien
      …
    else
      …
    end
  8. Class: bắt đầu bằng “class" và kết thúc bằng “end".
    Cấu trúc:
    class ten_class
		  ….
		end

