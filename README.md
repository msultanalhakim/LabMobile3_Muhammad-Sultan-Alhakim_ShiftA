# Tugas Pertemuan 3

Nama : Muhammad Sultan Alhakim
NIM : H1D022105
Shift Baru: A

Pada tugas pertemuan kali ini, tiap bagian penting dari kode akan dijelaskan di bawah ini.

1. Login Page
Pada halaman Login Page terdapat TextEditingController yang bertanggung jawab dalam mengontrol dan menyimpan text yang diinput oleh pengguna pada TextField. Kemudian terdapat ElevatedButton yang jika ditekan akan menjalankan logika IF-ELSE yang digunakan untuk memfilter username dan password yang terinput pada TextField dan menjalankan perintah sesuai dengan kondisinya, salah satunya adalah _saveUsername() yang menggunakan SharedPreferences untuk menyimpan data username ke Local Storage yang nantinya dapat digunakan pada halaman lain. Kemudian _showDialog akan berfungsi untuk menampilkan pesan yang akan muncul sesuai dengan kondisi yang akan terjadi nantinya.

2. Home Page
Pada halaman Home Page terdapat _loadUsername yang akan menerima dari SharePreferences yang dikirimkan oleh Login Page, kemudian akan menyimpan pada variabel namauser yang nantinya bisa dipanggil berdasarkan variabel tersebut. Kemudian terdapat openDrawer yang digunakan untuk membuka Sidemenu dengan melakukan klik pada tombol yang telah dibuat. Kemudian terdapat $namauser yang diambil dari variabel sebelumnya yang telah disimpan melalui SharePreferences.

3. Sidemenu
Pada bagian Sidemenu terdapat beberapa ListTile yang akan mencetak menu baru yang nantinya bisa diarahkan ke halaman tertentu, lalu Navigator.push yang akan mengarahkan ke super.key yang telah dibentuk untuk mengakses halaman tertentu. Lalu terdapat Logout yang akan mengarahkan ke halaman Login dan mencegah untuk ke halaman sebelumnya setelah klik tombol tersebut.

4. Pubspec.yaml
Pada bagian ini telah melakukan beberapa perubahan terutama dalam menambahkan gambar ke dalam aplikasi yang dikelola melalui file ini.

## Screenshot
![Tampilan Login](https://github.com/user-attachments/assets/ca563cc4-9046-49a5-a042-c595320e6098)
![Tampilan Sidemenu](https://github.com/user-attachments/assets/4cc884ce-6230-47d6-9a83-8463b1783171)
![Tampilan Homepage](https://github.com/user-attachments/assets/ae21a3a5-fae7-4d34-ba08-5cab81e4a4fb)
![Tampilan About](https://github.com/user-attachments/assets/97917106-c8e7-4fa8-bf9f-9147d9f1cd7c)
