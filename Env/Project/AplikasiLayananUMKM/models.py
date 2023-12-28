from django.db import models

class BaseMenu(models.Model):
    nama_menu = models.CharField(max_length=255)
    deskripsi = models.TextField()
    harga = models.DecimalField(max_digits=10, decimal_places=2)
    gambar = models.ImageField(upload_to='img/', null=True)

    # Laode Ikhwanul Uzlah_E1E122017
    class Meta:
        abstract = True

    def __str__(self):
        return f"{self.nama_menu}"
#Inheritance
#Pada bagian ini kita membuat class atau bidang-bidang lainnya dengan mewarisi sifat dari kelas induknya yakni BaseMenu.
#Diikuti dengan pernyataan pass (pernyataan kosong dalam Python), yang mana meskipun kita tidak menambahkan kode apapun ke dalam definisi tiap class, 
#tetapi secara efektif tiap-tiap class ini akan memiliki semua atribut dan metode yang telah didefinisikan dalam kelas induknya.
class Roti(BaseMenu):
    pass

# Ngawal Muhamad_E1E122129
class AishTea(BaseMenu):
    pass
#Polymorphism *
#Pada bagian ini, kita mengganti perilaku metode __str__, sehingga walaupun dengan metode yang sama (__str__), 
#kita dapat memiliki implementasi yang berbeda dengan metode pada kelas induknya ataupun kelas-kelas lainnya.
class Saguku(BaseMenu):
    def __str__(self):
        return f"saguku: {self.nama_menu}, harga: {self.harga}"

class Wang(BaseMenu):
    pass