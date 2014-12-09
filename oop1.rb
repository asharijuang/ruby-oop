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