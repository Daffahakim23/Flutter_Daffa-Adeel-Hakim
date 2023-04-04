BLoC (Business Logic Component) adalah pola desain arsitektur untuk memisahkan logika bisnis dari tampilan dalam aplikasi Flutter. Dalam pola BLoC, logika bisnis terpisah dari tampilan dan data diproses melalui aliran (stream) data.

BLoC terdiri dari tiga komponen utama: StreamController, Sink, dan Stream. StreamController digunakan untuk membuat stream yang dapat digunakan untuk mengirim dan menerima data. Sink digunakan untuk mengirim data ke stream, sedangkan Stream digunakan untuk menerima data dari stream.

Dalam BLoC, widget bertindak sebagai penerima data (sink) dan stream bertindak sebagai pengirim data. Ketika ada perubahan data, BLoC akan mengirim data ke stream dan widget akan menerima data melalui sink. Setelah menerima data, widget akan memperbarui tampilan sesuai dengan data yang diterima.

Untuk mengimplementasikan BLoC dalam Flutter, Anda dapat menggunakan beberapa paket pendukung seperti flutter_bloc dan bloc. Paket-paket ini menyediakan fitur-fitur yang berguna seperti BlocProvider dan BlocBuilder yang memudahkan pengembangan aplikasi dengan pola BLoC.

Kelebihan dari BLoC adalah memisahkan logika bisnis dari tampilan dan memudahkan pengelolaan state dalam aplikasi yang kompleks. Namun, penggunaan BLoC memerlukan sedikit usaha dalam membuat alur kerja stream dan sink. Selain itu, BLoC juga memerlukan waktu dan usaha untuk mempelajari pola desain arsitektur yang digunakan.
