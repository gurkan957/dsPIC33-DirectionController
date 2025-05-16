Mikrodenetleyici ile Oyun Yön Kontrolü
A button-based game controller using dsPIC33EP128GP502
Bu proje, dsPIC33EP128GP502 mikrodenetleyicisi kullanılarak geliştirilmiş bir oyun yön kontrol cihazıdır. İki buton (SW1 ve SW2) aracılığıyla oyunlarda sağ ve sol yön kontrolü sağlar. Mikrodenetleyici, buton girişlerini algılar, bir LCD ekranda durum mesajları gösterir, LED'lerle görsel geri bildirim sağlar ve UART üzerinden PC'ye veri gönderir. Python betiği, seri port verilerini işleyerek klavye ok tuşlarını kontrol eder. Proje, 2D platform oyunları, yarış oyunları gibi yön kontrolü gerektiren uygulamalarda kullanılabilir.
Özellikler

4-bit modda 16x2 LCD ekran ile metin gösterimi (örn. "Mikroislemci", "Moving right...", "Moving left...").
İki buton (SW1, SW2) ile sağ/sol yön girişi algılama.
İki LED (LED1, LED2) ile buton durumlarının görselleştirilmesi.
UART (230400 baud rate) üzerinden PC ile seri iletişim.
Python ile seri port verilerini işleyerek klavye ok tuşlarını kontrol etme.

Kullanılan Teknolojiler

Donanım:
dsPIC33EP128GP502 mikrodenetleyicisi
16x2 LCD ekran (HD44780 uyumlu, 4-bit mod)
2 adet buton (SW1, SW2)
2 adet LED (LED1, LED2)


Yazılım:
MPLAB X IDE (C programlama, XC16 derleyici)
Python 3.x (pyserial, keyboard kütüphaneleri)



Kurulum
Donanım Gereksinimleri

dsPIC33EP128GP502 mikrodenetleyicisi (ör. Explorer 16/32 geliştirme kartı).
16x2 LCD ekran (4-bit bağlantı).
2 adet buton ve 2 adet LED (devre kartına bağlı).
USB-UART dönüştürücü veya mikrodenetleyicinin UART pinleri ile PC bağlantısı.

Yazılım Gereksinimleri

MPLAB X IDE ve XC16 derleyici (C kodu için).
Python 3.x (Python betiği için).
Python kütüphaneleri:pip installJeremiah

Not: keyboard kütüphanesi, özellikle Windows'ta yönetici (admin) izni gerektirebilir.

Kurulum Adımları

Donanım Kurulumu:

dsPIC33EP128GP502'yi geliştirme kartına bağlayın.
LCD ekranı, butonları ve LED'leri bağlayın. Pin bağlantıları için main.c dosyasındaki tanımlara bakın.
UART pinlerini PC'ye bağlayın (ör. USB-UART dönüştürücü ile).


C Kodunu Derleme ve Yükleme:

MPLAB X IDE'yi açın ve yeni bir proje oluşturun.
main.c dosyasını projeye ekleyin (veya verilen C kodunu kullanın).
XC16 derleyicisi ile kodu derleyin.
Mikrodenetleyiciye kodu yükleyin (ör. PICkit veya ICD ile).


Python Ortamını Hazırlama:

Python 3.x'i yükleyin.
Gerekli kütüphaneleri yükleyin:pip install pyserial keyboard


Python betiğini (serial_to_arrows.py) bir dosyaya kaydedin.
Seri port adını (örn. COM5) betikte güncelleyin veya otomatik port seçimini kullanın.


Sistemi Çalıştırma:

Mikrodenetleyiciye güç verin; LCD'de "Mikroislemci" yazısı görünecek.
Python betiğini çalıştırın (Windows'ta yönetici modunda çalıştırmanız gerekebilir):python serial_to_arrows.py


SW1'e basıldığında: LED1 yanar, LCD'de "Moving right..." yazılır, PC'de sağ ok tuşu tetiklenir.
SW2'ye basıldığında: LED2 yanar, LCD'de "Moving left..." yazılır, PC'de sol ok tuşu tetiklenir.
Butonlar bırakıldığında: LED'ler söner, ok tuşları serbest bırakılır.



Kullanım

Mikrodenetleyici çalışırken SW1 veya SW2 butonlarına basın:
SW1: Sağ yön kontrolü (PC'de sağ ok tuşu, oyunlarda sağ hareket).
SW2: Sol yön kontrolü (PC'de sol ok tuşu, oyunlarda sol hareket).


LCD ekran, buton durumuna göre mesajları günceller (örn. "Moving right...").
Python betiği, seri porttan gelen verilere göre klavye ok tuşlarını kontrol eder.
Programı durdurmak için Python betiğinde Ctrl+C tuşlarına basın.

Örnek Kullanım Senaryoları:

2D platform oyunlarında karakter hareketi (örn. Mario benzeri oyunlar).
Yarış oyunlarında araç yönlendirme.
Herhangi bir klavye ok tuşu gerektiren PC uygulamasında yön kontrolü.

Lisans
Bu proje [MIT Lisansı] altında lisanslanmıştır. Daha fazla bilgi için LICENSE dosyasına bakın.
İletişim
Sorularınız veya geri bildirimleriniz için [GitHub kullanıcı adınız veya e-posta adresiniz] üzerinden ulaşabilirsiniz.
