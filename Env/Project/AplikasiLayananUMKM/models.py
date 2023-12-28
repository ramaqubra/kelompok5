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

class Saguku(BaseMenu):
    pass

class Wang(BaseMenu):
    pass