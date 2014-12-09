# Membuat class baru dengan nama Bahasa
class Bahasa
	# menginisialisasi data dasar 
  def initialize(name, creator)
    # variable nama dalam class Bahasa
    @name = name
    # variable creator dalam class Bahasa
    @creator = creator
  end
  # Mendefinisikan method dengan nama deskripsi 
  def deskripsi
  	# menampilkan text dan data dari variable nama 
    puts "Bahasa pemrograman #{@name} diciptakan oleh #{@creator}!"
  end
end
# membuat object baru dengan class bahasa dan mengirimkan data dasar
ruby = Bahasa.new("Ruby", "Yukihiro Matsumoto")
python = Bahasa.new("Python", "Guido van Rossum")
javascript = Bahasa.new("JavaScript", "Brendan Eich")

# memanggil object diikuti dengan methodnya, method deskripsi
ruby.deskripsi
python.deskripsi
javascript.deskripsi

# ------------------ Contoh class variable dan global variable ---------------------
class MyClass
  # variable dengan @@ hanya dapat dipanggil di dalam class
  @@var_class = "ini class variable"
  # variable dengan $ dapat dipanggil langsung dari luar class
  $my_variable = "Hello!"
end

# memanggil variable di dalam class
puts $my_variable
puts "memanggil variable di dalam class MyClass :#{$my_variable}"

# ---------------------------------- End -------------------------------------------

class Computer

  $manufacturer = "Mango Computer, Inc."
  @@files = {hello: "Hello, world!"}

  def initialize(username, password)
    @username = username
    @password = password
  end

  def current_user
    @username
  end

  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.