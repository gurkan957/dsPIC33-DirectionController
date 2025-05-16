import serial
import serial.tools.list_ports
import keyboard
import time

# Kullanılabilir seri portları listele
def list_serial_ports():
    ports = serial.tools.list_ports.comports()
    print("Kullanılabilir seri portlar:")
    for port in ports:
        print(f"- {port.device}: {port.description}")
    return [port.device for port in ports]

# Seri port ayarları
SERIAL_PORT = 'COM5'
BAUD_RATE = 230400

# Seri portu seç ve başlat
try:
    available_ports = list_serial_ports()
    if not available_ports:
        print("Hiçbir seri port bulunamadı!")
        exit(1)
    
    # İlk portu varsayılan olarak seç veya kullanıcıdan giriş al
    SERIAL_PORT = available_ports[0]
    print(f"Varsayılan port seçildi: {SERIAL_PORT}")
    
    ser = serial.Serial(SERIAL_PORT, BAUD_RATE, timeout=1)
    print(f"{SERIAL_PORT} portuna bağlanıldı.")
except serial.SerialException as e:
    print(f"Seri port hatası: {e}")
    exit(1)

# Ana döngü
while True:
    try:
        # Seri porttan bir bayt oku
        if ser.in_waiting > 0:
            char = ser.read(1).decode('ascii')
            if char == 'a':
                keyboard.press('left')  # Sol ok tuşunu basılı tut
                print("Sol ok basıldı")
            elif char == 'd':
                keyboard.press('right')  # Sağ ok tuşunu basılı tut
                print("Sağ ok basıldı")
            elif char == 'r':
                keyboard.release('left')  # Ok tuşlarını serbest bırak
                keyboard.release('right')
                print("Ok tuşları serbest bırakıldı")
            else:
                print(f"Bilinmeyen karakter alındı: {char}")
    except serial.SerialException as e:
        print(f"Seri port okuma hatası: {e}")
        ser.close()
        break
    except UnicodeDecodeError:
        print("Geçersiz karakter alındı, atlanıyor...")
        continue
    except KeyboardInterrupt:
        print("Program sonlandırılıyor...")
        keyboard.release('left')
        keyboard.release('right')
        ser.close()
        break

    # Küçük bir gecikme (CPU kullanımını azaltmak için)
    time.sleep(0.01)