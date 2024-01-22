import 'package:equatable/equatable.dart';


class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imagePath;
  final int views;
  final DateTime createdAt;
  

  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imagePath,
    required this.views,
    required this.createdAt,
  });

  static List<Article> articles = [
    Article(
      id: '1',
      title:
          'Alasan Kamu Harus Kuliah di Universitas Teknokrat Indonesia',
      subtitle:
          'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
          'Lulusan SMA tentu mencari kampus terbaik untuk mengenyam pendidikan ke jenjang yang lebih tinggi. Di Bandar Lampung ada banyak kampus, tetapi dari sekian itu, Universitas Teknokrat Indonesia adalah yang paling pas sebagai tempat kamui kuliah.',
      author: 'Verlando Akbar',
      authorImageUrl: 'lib/SignIn/pages/p.jpeg',
      category: 'Politics',
      views: 1204,
      imagePath:
          'lib/SignIn/images/1.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '2',
      title:
          'Nasrullah Yusuf Ikuti Temu Tahunan Forum Rektor Indonesia, Bincang-Foto Presiden Jokowi',
      subtitle:
          'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
          'Rektor Universitas Teknokrat Indonesia yang juga Wakil Ketua Dewan Pertimbangan Forum Rektor Indonesia (FRI) Dr HM Nasrullah Yusuf SE MBA menyempatkan diri bertemu dan berfoto bersama Presiden Jokowi usai pembukaan Temu Tahunan Forum Rektor Indonesia di Universitas Negeri Surabaya (Unesa), Senin, 15/1/2024.',
      author: 'Verlando Akbar',
      authorImageUrl:
          'lib/SignIn/pages/p.jpeg',
      category: 'Politics',
      views: 1204,
      imagePath: 'lib/SignIn/images/2.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '3',
      title:
          'Kunjungi Museum Pong Tiku, Mahasiswi Universitas Teknokrat Indonesia Dinda Indah Jelita Foto dengan Mumi, Gak Bahaya Tah?',
      subtitle:
          'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
          'Dinda Indah Jelita merasakan pengalaman baru lagi kala berkunjung ke Toraja pada 5-7 Januari 2024. Itu adalah bagian dari pelaksanaan Modul Nusantara bagian dari pertukaran mahasiswa merdeka (PMM).Selama satu semester ini mahasiswa Universitas Teknokrat Indonesia itu kuliah di Universitas Fajar, Makassar.Soal kunjungannya ke Toraja, kepada wartalampung.id, Dinda banyak bercerita. Berangkat pada 5 Januari 2024, Dinda dan teman-teman peserta PMM pada 6 Januari berkunjung ke salah satu museum yang ada di Toraja Utara, yaitu Museum Pong Tiku.Di museum itu, Kepala Dinas Kebudayaan dan Pariwisata Toraja Utara Matius Sampelalong menjelaskan bangunan dan isinya dengan detail.Dinda mengatakan, museum ini dibangun karena pemerintah Toraja Utara merasa perlu untuk memberikan informasi kepada masyarakat mengenai Toraja.',
      author: 'Verlando Akbar',
      authorImageUrl:
          'lib/SignIn/pages/p.jpeg',
      category: 'Politics',
      views: 1204,
      imagePath:
          'lib/SignIn/images/3.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),
    Article(
      id: '4',
      title: 'Universitas Teknokrat Indonesia Jalin Kerjasama dengan Badan Standardisasi Instrumen Pertanian (BSIP) Lampung Kementerian Pertanian (Kementan)',
      subtitle:
          'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:
      'Kegiatan pada Selasa (16/1/2024) tersebut dihadiri oleh Kepala BSIP Kementan, Dr. Rachman Jaya, S.Pi., M.Si. didampingi oleh staf dan jajarannya. Dari pihak Teknokrat, Wakil Rektor Bidang Kerja Sama dan Umum Dr. Ryan Randy Suryono, M.Kom. didampingi oleh Ketua CoE UTI, Elka Pranita, M.T, ⁠Ketua Divisi CoE Smart Agriculture Setyawati, M.Cs., Samsugi, M.Kom, Aditia Yudhistira, M.Kom, dan Wulan Rezky Amalya, M.Ak.Dr. Rachman Jaya, S.Pi., M.Si. menyampaikan, tujuan BSIP menggandeng Universitas Teknokrat Indonesia adalah untuk melakukan riset teknologi di bidang pertanian, seperti alat irigasi tetes, penyiraman dengan drone autonomus, dan lainnya. Mahasiswa Universitas Teknokrat Indonesia juga dapat melakukan magang dan PKL di BSIP Lampung.',

      author: 'Verlando Akbar',
      authorImageUrl:'lib/SignIn/pages/p.jpeg',
      category: 'Politics',
      views: 1204,
      imagePath:
          'lib/SignIn/images/4.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 19)),
    ),
    Article(
      id: '5',
      title:
          'Mahasiswi Universitas Teknokrat Indonesia Dinda Indah Jelita Cerita Pengalaman Kunjungi Goa Londa Tana Toraja',
      subtitle:
          'Aliquam laoreet ante non diam suscipit accumsan. Sed vel consequat leo, non suscipit odio. Aliquam turpis',
      body:'Kata Dinda, saat melewati gapura kedua, pengunjung akan disuguhkan pemandangan jejeran peti jenazah dari kejauhan.Selain peti jenazah, juga dapat terlihat jejeran tau-tau, yakni patung menyerupai jenazah yang dimakamkan di dalam gua.Penjaga makam Goa Londa menjelaskan, goa ini sudah berumur ratusan tahun dan masih digunakan hingga saat ini. Gua Londa memiliki panjang kurang lebih satu kilometer.Menurut Dinda, di dalam gua ini juga dapat ditemukan erong atau tempat jenazah yang berbentuk babi dan kerbau yang dipenuhi dengan tengkorak dan tulang belulang.Usianya sudah ratusan tahun. Baru di atas punggung goa terdapat sebuah benteng pertahanan yang bernama Tarangenge.',
      author: 'Verlando Akbar',
      authorImageUrl:'lib/SignIn/pages/p.jpeg',
      category: 'Politics',
      views: 1204,
      imagePath:
          'lib/SignIn/images/5.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imagePath,
        createdAt,
      ];
}
