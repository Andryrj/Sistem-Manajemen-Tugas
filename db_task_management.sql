SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Database: `db_task_management`
--



CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO migrations VALUES
("1","0001_01_01_000000_create_users_table","1"),
("2","0001_01_01_000001_create_cache_table","1"),
("3","0001_01_01_000002_create_jobs_table","1"),
("4","2025_10_25_121011_create_tasks_table","1");
INSERT INTO migrations VALUES
("1","0001_01_01_000000_create_users_table","1"),
("2","0001_01_01_000001_create_cache_table","1"),
("3","0001_01_01_000002_create_jobs_table","1"),
("4","2025_10_25_121011_create_tasks_table","1");
INSERT INTO migrations VALUES
("1","0001_01_01_000000_create_users_table","1"),
("2","0001_01_01_000001_create_cache_table","1"),
("3","0001_01_01_000002_create_jobs_table","1"),
("4","2025_10_25_121011_create_tasks_table","1");




CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE `tasks` (
  `task_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('To Do','In Progress','Done') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'To Do',
  `deadline` date DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  UNIQUE KEY `tasks_title_unique` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO tasks VALUES
("1","1","Rapat Evaluasi Tim - 950","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","In Progress","2026-01-11","Latika Safitri S.Ked","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","1","Optimasi Kinerja Server - 818","Mengecek celah keamanan pada sistem pembayaran.","To Do","2026-01-25","Ana Ilsa Nuraini M.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("3","1","Review Kode Pull Request - 735","Mempresentasikan ide proyek baru kepada manajemen.","To Do","2026-01-12","Sarah Widiastuti S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("4","1","Backup Database - 946","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-23","Kalim Mansur","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("5","1","Desain Ulang Homepage - 441","Mengecek celah keamanan pada sistem pembayaran.","Done","2026-01-18","Sarah Widiastuti S.H.","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("6","1","Membuat Laporan Bulanan - 615","Mempresentasikan ide proyek baru kepada manajemen.","In Progress","2026-01-12","Yusuf Ivan Dabukke","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("7","1","Rapat Evaluasi Tim - 827","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-01-10","Ulya Melani S.Psi","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("8","1","Analisis Kompetitor - 625","Merencanakan pengeluaran operasional untuk kuartal ketiga.","In Progress","2026-01-29","Capa Hidayat S.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("9","1","Audit Keamanan Sistem - 789","Meningkatkan kecepatan loading website dengan caching.","To Do","2026-01-30","Adika Sitompul","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("10","1","Pelatihan Karyawan Baru - 737","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","Done","2026-02-07","Amelia Aryani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("11","1","Perbaikan Bug Login - 771","Memperbarui dokumentasi API agar sesuai dengan versi terbaru.","In Progress","2026-02-06","Hafshah Anggraini S.I.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("12","1","Membuat Laporan Bulanan - 892","Memindahkan data dari server lama ke server cloud baru.","In Progress","2026-01-16","Dono Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("13","1","Backup Database - 117","Membuat mockup desain baru untuk halaman utama website.","Done","2026-02-02","Karsana Lanang Tarihoran M.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("14","2","Analisis Kompetitor - 760","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-15","Mutia Usamah","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("15","2","Perbaikan Bug Login - 981","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-19","Jail Tasnim Prasetyo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("16","2","Audit Keamanan Sistem - 816","Mengevaluasi kinerja tim selama satu sprint terakhir.","Done","2026-01-24","Langgeng Prayoga","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("17","2","Pelatihan Karyawan Baru - 601","Menyusun laporan keuangan dan operasional untuk bulan ini.","Done","2026-02-05","Gawati Handayani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("18","2","Optimasi Kinerja Server - 039","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-11","Qori Gawati Palastri S.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("19","2","Perbaikan Bug Login - 731","Merencanakan pengeluaran operasional untuk kuartal ketiga.","Done","2026-01-14","Umar Pradipta","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("20","2","Review Kode Pull Request - 431","Mengevaluasi kinerja tim selama satu sprint terakhir.","To Do","2026-01-26","Eka Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("21","2","Audit Keamanan Sistem - 979","Membuat mockup desain baru untuk halaman utama website.","Done","2026-01-14","Gawati Widiastuti","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("22","2","Optimasi Kinerja Server - 030","Membuat mockup desain baru untuk halaman utama website.","In Progress","2026-01-24","Bajragin Simbolon","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("23","2","Audit Keamanan Sistem - 719","Melakukan backup rutin database untuk mencegah kehilangan data.","To Do","2026-01-20","Maida Carla Maryati S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("24","2","Review Kode Pull Request - 897","Melakukan code review terhadap fitur yang baru dikerjakan developer.","In Progress","2026-01-09","Dalima Hassanah S.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("25","2","Review Kode Pull Request - 935","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-02-01","Dewi Melani","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO tasks VALUES
("1","1","Rapat Evaluasi Tim - 950","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","In Progress","2026-01-11","Latika Safitri S.Ked","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","1","Optimasi Kinerja Server - 818","Mengecek celah keamanan pada sistem pembayaran.","To Do","2026-01-25","Ana Ilsa Nuraini M.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("3","1","Review Kode Pull Request - 735","Mempresentasikan ide proyek baru kepada manajemen.","To Do","2026-01-12","Sarah Widiastuti S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("4","1","Backup Database - 946","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-23","Kalim Mansur","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("5","1","Desain Ulang Homepage - 441","Mengecek celah keamanan pada sistem pembayaran.","Done","2026-01-18","Sarah Widiastuti S.H.","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("6","1","Membuat Laporan Bulanan - 615","Mempresentasikan ide proyek baru kepada manajemen.","In Progress","2026-01-12","Yusuf Ivan Dabukke","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("7","1","Rapat Evaluasi Tim - 827","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-01-10","Ulya Melani S.Psi","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("8","1","Analisis Kompetitor - 625","Merencanakan pengeluaran operasional untuk kuartal ketiga.","In Progress","2026-01-29","Capa Hidayat S.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("9","1","Audit Keamanan Sistem - 789","Meningkatkan kecepatan loading website dengan caching.","To Do","2026-01-30","Adika Sitompul","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("10","1","Pelatihan Karyawan Baru - 737","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","Done","2026-02-07","Amelia Aryani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("11","1","Perbaikan Bug Login - 771","Memperbarui dokumentasi API agar sesuai dengan versi terbaru.","In Progress","2026-02-06","Hafshah Anggraini S.I.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("12","1","Membuat Laporan Bulanan - 892","Memindahkan data dari server lama ke server cloud baru.","In Progress","2026-01-16","Dono Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("13","1","Backup Database - 117","Membuat mockup desain baru untuk halaman utama website.","Done","2026-02-02","Karsana Lanang Tarihoran M.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("14","2","Analisis Kompetitor - 760","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-15","Mutia Usamah","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("15","2","Perbaikan Bug Login - 981","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-19","Jail Tasnim Prasetyo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("16","2","Audit Keamanan Sistem - 816","Mengevaluasi kinerja tim selama satu sprint terakhir.","Done","2026-01-24","Langgeng Prayoga","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("17","2","Pelatihan Karyawan Baru - 601","Menyusun laporan keuangan dan operasional untuk bulan ini.","Done","2026-02-05","Gawati Handayani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("18","2","Optimasi Kinerja Server - 039","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-11","Qori Gawati Palastri S.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("19","2","Perbaikan Bug Login - 731","Merencanakan pengeluaran operasional untuk kuartal ketiga.","Done","2026-01-14","Umar Pradipta","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("20","2","Review Kode Pull Request - 431","Mengevaluasi kinerja tim selama satu sprint terakhir.","To Do","2026-01-26","Eka Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("21","2","Audit Keamanan Sistem - 979","Membuat mockup desain baru untuk halaman utama website.","Done","2026-01-14","Gawati Widiastuti","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("22","2","Optimasi Kinerja Server - 030","Membuat mockup desain baru untuk halaman utama website.","In Progress","2026-01-24","Bajragin Simbolon","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("23","2","Audit Keamanan Sistem - 719","Melakukan backup rutin database untuk mencegah kehilangan data.","To Do","2026-01-20","Maida Carla Maryati S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("24","2","Review Kode Pull Request - 897","Melakukan code review terhadap fitur yang baru dikerjakan developer.","In Progress","2026-01-09","Dalima Hassanah S.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("25","2","Review Kode Pull Request - 935","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-02-01","Dewi Melani","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO tasks VALUES
("1","1","Rapat Evaluasi Tim - 950","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","In Progress","2026-01-11","Latika Safitri S.Ked","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","1","Optimasi Kinerja Server - 818","Mengecek celah keamanan pada sistem pembayaran.","To Do","2026-01-25","Ana Ilsa Nuraini M.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("3","1","Review Kode Pull Request - 735","Mempresentasikan ide proyek baru kepada manajemen.","To Do","2026-01-12","Sarah Widiastuti S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("4","1","Backup Database - 946","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-23","Kalim Mansur","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("5","1","Desain Ulang Homepage - 441","Mengecek celah keamanan pada sistem pembayaran.","Done","2026-01-18","Sarah Widiastuti S.H.","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("6","1","Membuat Laporan Bulanan - 615","Mempresentasikan ide proyek baru kepada manajemen.","In Progress","2026-01-12","Yusuf Ivan Dabukke","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("7","1","Rapat Evaluasi Tim - 827","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-01-10","Ulya Melani S.Psi","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("8","1","Analisis Kompetitor - 625","Merencanakan pengeluaran operasional untuk kuartal ketiga.","In Progress","2026-01-29","Capa Hidayat S.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("9","1","Audit Keamanan Sistem - 789","Meningkatkan kecepatan loading website dengan caching.","To Do","2026-01-30","Adika Sitompul","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("10","1","Pelatihan Karyawan Baru - 737","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","Done","2026-02-07","Amelia Aryani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("11","1","Perbaikan Bug Login - 771","Memperbarui dokumentasi API agar sesuai dengan versi terbaru.","In Progress","2026-02-06","Hafshah Anggraini S.I.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("12","1","Membuat Laporan Bulanan - 892","Memindahkan data dari server lama ke server cloud baru.","In Progress","2026-01-16","Dono Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("13","1","Backup Database - 117","Membuat mockup desain baru untuk halaman utama website.","Done","2026-02-02","Karsana Lanang Tarihoran M.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("14","2","Analisis Kompetitor - 760","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-15","Mutia Usamah","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("15","2","Perbaikan Bug Login - 981","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-19","Jail Tasnim Prasetyo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("16","2","Audit Keamanan Sistem - 816","Mengevaluasi kinerja tim selama satu sprint terakhir.","Done","2026-01-24","Langgeng Prayoga","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("17","2","Pelatihan Karyawan Baru - 601","Menyusun laporan keuangan dan operasional untuk bulan ini.","Done","2026-02-05","Gawati Handayani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("18","2","Optimasi Kinerja Server - 039","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-11","Qori Gawati Palastri S.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("19","2","Perbaikan Bug Login - 731","Merencanakan pengeluaran operasional untuk kuartal ketiga.","Done","2026-01-14","Umar Pradipta","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("20","2","Review Kode Pull Request - 431","Mengevaluasi kinerja tim selama satu sprint terakhir.","To Do","2026-01-26","Eka Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("21","2","Audit Keamanan Sistem - 979","Membuat mockup desain baru untuk halaman utama website.","Done","2026-01-14","Gawati Widiastuti","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("22","2","Optimasi Kinerja Server - 030","Membuat mockup desain baru untuk halaman utama website.","In Progress","2026-01-24","Bajragin Simbolon","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("23","2","Audit Keamanan Sistem - 719","Melakukan backup rutin database untuk mencegah kehilangan data.","To Do","2026-01-20","Maida Carla Maryati S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("24","2","Review Kode Pull Request - 897","Melakukan code review terhadap fitur yang baru dikerjakan developer.","In Progress","2026-01-09","Dalima Hassanah S.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("25","2","Review Kode Pull Request - 935","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-02-01","Dewi Melani","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO tasks VALUES
("1","1","Rapat Evaluasi Tim - 950","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","In Progress","2026-01-11","Latika Safitri S.Ked","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","1","Optimasi Kinerja Server - 818","Mengecek celah keamanan pada sistem pembayaran.","To Do","2026-01-25","Ana Ilsa Nuraini M.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("3","1","Review Kode Pull Request - 735","Mempresentasikan ide proyek baru kepada manajemen.","To Do","2026-01-12","Sarah Widiastuti S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("4","1","Backup Database - 946","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-23","Kalim Mansur","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("5","1","Desain Ulang Homepage - 441","Mengecek celah keamanan pada sistem pembayaran.","Done","2026-01-18","Sarah Widiastuti S.H.","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("6","1","Membuat Laporan Bulanan - 615","Mempresentasikan ide proyek baru kepada manajemen.","In Progress","2026-01-12","Yusuf Ivan Dabukke","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("7","1","Rapat Evaluasi Tim - 827","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-01-10","Ulya Melani S.Psi","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("8","1","Analisis Kompetitor - 625","Merencanakan pengeluaran operasional untuk kuartal ketiga.","In Progress","2026-01-29","Capa Hidayat S.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("9","1","Audit Keamanan Sistem - 789","Meningkatkan kecepatan loading website dengan caching.","To Do","2026-01-30","Adika Sitompul","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("10","1","Pelatihan Karyawan Baru - 737","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","Done","2026-02-07","Amelia Aryani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("11","1","Perbaikan Bug Login - 771","Memperbarui dokumentasi API agar sesuai dengan versi terbaru.","In Progress","2026-02-06","Hafshah Anggraini S.I.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("12","1","Membuat Laporan Bulanan - 892","Memindahkan data dari server lama ke server cloud baru.","In Progress","2026-01-16","Dono Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("13","1","Backup Database - 117","Membuat mockup desain baru untuk halaman utama website.","Done","2026-02-02","Karsana Lanang Tarihoran M.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("14","2","Analisis Kompetitor - 760","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-15","Mutia Usamah","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("15","2","Perbaikan Bug Login - 981","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-19","Jail Tasnim Prasetyo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("16","2","Audit Keamanan Sistem - 816","Mengevaluasi kinerja tim selama satu sprint terakhir.","Done","2026-01-24","Langgeng Prayoga","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("17","2","Pelatihan Karyawan Baru - 601","Menyusun laporan keuangan dan operasional untuk bulan ini.","Done","2026-02-05","Gawati Handayani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("18","2","Optimasi Kinerja Server - 039","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-11","Qori Gawati Palastri S.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("19","2","Perbaikan Bug Login - 731","Merencanakan pengeluaran operasional untuk kuartal ketiga.","Done","2026-01-14","Umar Pradipta","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("20","2","Review Kode Pull Request - 431","Mengevaluasi kinerja tim selama satu sprint terakhir.","To Do","2026-01-26","Eka Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("21","2","Audit Keamanan Sistem - 979","Membuat mockup desain baru untuk halaman utama website.","Done","2026-01-14","Gawati Widiastuti","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("22","2","Optimasi Kinerja Server - 030","Membuat mockup desain baru untuk halaman utama website.","In Progress","2026-01-24","Bajragin Simbolon","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("23","2","Audit Keamanan Sistem - 719","Melakukan backup rutin database untuk mencegah kehilangan data.","To Do","2026-01-20","Maida Carla Maryati S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("24","2","Review Kode Pull Request - 897","Melakukan code review terhadap fitur yang baru dikerjakan developer.","In Progress","2026-01-09","Dalima Hassanah S.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("25","2","Review Kode Pull Request - 935","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-02-01","Dewi Melani","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO tasks VALUES
("1","1","Rapat Evaluasi Tim - 950","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","In Progress","2026-01-11","Latika Safitri S.Ked","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","1","Optimasi Kinerja Server - 818","Mengecek celah keamanan pada sistem pembayaran.","To Do","2026-01-25","Ana Ilsa Nuraini M.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("3","1","Review Kode Pull Request - 735","Mempresentasikan ide proyek baru kepada manajemen.","To Do","2026-01-12","Sarah Widiastuti S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("4","1","Backup Database - 946","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-23","Kalim Mansur","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("5","1","Desain Ulang Homepage - 441","Mengecek celah keamanan pada sistem pembayaran.","Done","2026-01-18","Sarah Widiastuti S.H.","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("6","1","Membuat Laporan Bulanan - 615","Mempresentasikan ide proyek baru kepada manajemen.","In Progress","2026-01-12","Yusuf Ivan Dabukke","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("7","1","Rapat Evaluasi Tim - 827","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-01-10","Ulya Melani S.Psi","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("8","1","Analisis Kompetitor - 625","Merencanakan pengeluaran operasional untuk kuartal ketiga.","In Progress","2026-01-29","Capa Hidayat S.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("9","1","Audit Keamanan Sistem - 789","Meningkatkan kecepatan loading website dengan caching.","To Do","2026-01-30","Adika Sitompul","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("10","1","Pelatihan Karyawan Baru - 737","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","Done","2026-02-07","Amelia Aryani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("11","1","Perbaikan Bug Login - 771","Memperbarui dokumentasi API agar sesuai dengan versi terbaru.","In Progress","2026-02-06","Hafshah Anggraini S.I.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("12","1","Membuat Laporan Bulanan - 892","Memindahkan data dari server lama ke server cloud baru.","In Progress","2026-01-16","Dono Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("13","1","Backup Database - 117","Membuat mockup desain baru untuk halaman utama website.","Done","2026-02-02","Karsana Lanang Tarihoran M.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("14","2","Analisis Kompetitor - 760","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-15","Mutia Usamah","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("15","2","Perbaikan Bug Login - 981","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-19","Jail Tasnim Prasetyo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("16","2","Audit Keamanan Sistem - 816","Mengevaluasi kinerja tim selama satu sprint terakhir.","Done","2026-01-24","Langgeng Prayoga","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("17","2","Pelatihan Karyawan Baru - 601","Menyusun laporan keuangan dan operasional untuk bulan ini.","Done","2026-02-05","Gawati Handayani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("18","2","Optimasi Kinerja Server - 039","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-11","Qori Gawati Palastri S.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("19","2","Perbaikan Bug Login - 731","Merencanakan pengeluaran operasional untuk kuartal ketiga.","Done","2026-01-14","Umar Pradipta","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("20","2","Review Kode Pull Request - 431","Mengevaluasi kinerja tim selama satu sprint terakhir.","To Do","2026-01-26","Eka Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("21","2","Audit Keamanan Sistem - 979","Membuat mockup desain baru untuk halaman utama website.","Done","2026-01-14","Gawati Widiastuti","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("22","2","Optimasi Kinerja Server - 030","Membuat mockup desain baru untuk halaman utama website.","In Progress","2026-01-24","Bajragin Simbolon","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("23","2","Audit Keamanan Sistem - 719","Melakukan backup rutin database untuk mencegah kehilangan data.","To Do","2026-01-20","Maida Carla Maryati S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("24","2","Review Kode Pull Request - 897","Melakukan code review terhadap fitur yang baru dikerjakan developer.","In Progress","2026-01-09","Dalima Hassanah S.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("25","2","Review Kode Pull Request - 935","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-02-01","Dewi Melani","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO tasks VALUES
("1","1","Rapat Evaluasi Tim - 950","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","In Progress","2026-01-11","Latika Safitri S.Ked","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","1","Optimasi Kinerja Server - 818","Mengecek celah keamanan pada sistem pembayaran.","To Do","2026-01-25","Ana Ilsa Nuraini M.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("3","1","Review Kode Pull Request - 735","Mempresentasikan ide proyek baru kepada manajemen.","To Do","2026-01-12","Sarah Widiastuti S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("4","1","Backup Database - 946","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-23","Kalim Mansur","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("5","1","Desain Ulang Homepage - 441","Mengecek celah keamanan pada sistem pembayaran.","Done","2026-01-18","Sarah Widiastuti S.H.","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("6","1","Membuat Laporan Bulanan - 615","Mempresentasikan ide proyek baru kepada manajemen.","In Progress","2026-01-12","Yusuf Ivan Dabukke","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("7","1","Rapat Evaluasi Tim - 827","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-01-10","Ulya Melani S.Psi","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("8","1","Analisis Kompetitor - 625","Merencanakan pengeluaran operasional untuk kuartal ketiga.","In Progress","2026-01-29","Capa Hidayat S.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("9","1","Audit Keamanan Sistem - 789","Meningkatkan kecepatan loading website dengan caching.","To Do","2026-01-30","Adika Sitompul","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("10","1","Pelatihan Karyawan Baru - 737","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","Done","2026-02-07","Amelia Aryani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("11","1","Perbaikan Bug Login - 771","Memperbarui dokumentasi API agar sesuai dengan versi terbaru.","In Progress","2026-02-06","Hafshah Anggraini S.I.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("12","1","Membuat Laporan Bulanan - 892","Memindahkan data dari server lama ke server cloud baru.","In Progress","2026-01-16","Dono Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("13","1","Backup Database - 117","Membuat mockup desain baru untuk halaman utama website.","Done","2026-02-02","Karsana Lanang Tarihoran M.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("14","2","Analisis Kompetitor - 760","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-15","Mutia Usamah","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("15","2","Perbaikan Bug Login - 981","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-19","Jail Tasnim Prasetyo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("16","2","Audit Keamanan Sistem - 816","Mengevaluasi kinerja tim selama satu sprint terakhir.","Done","2026-01-24","Langgeng Prayoga","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("17","2","Pelatihan Karyawan Baru - 601","Menyusun laporan keuangan dan operasional untuk bulan ini.","Done","2026-02-05","Gawati Handayani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("18","2","Optimasi Kinerja Server - 039","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-11","Qori Gawati Palastri S.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("19","2","Perbaikan Bug Login - 731","Merencanakan pengeluaran operasional untuk kuartal ketiga.","Done","2026-01-14","Umar Pradipta","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("20","2","Review Kode Pull Request - 431","Mengevaluasi kinerja tim selama satu sprint terakhir.","To Do","2026-01-26","Eka Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("21","2","Audit Keamanan Sistem - 979","Membuat mockup desain baru untuk halaman utama website.","Done","2026-01-14","Gawati Widiastuti","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("22","2","Optimasi Kinerja Server - 030","Membuat mockup desain baru untuk halaman utama website.","In Progress","2026-01-24","Bajragin Simbolon","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("23","2","Audit Keamanan Sistem - 719","Melakukan backup rutin database untuk mencegah kehilangan data.","To Do","2026-01-20","Maida Carla Maryati S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("24","2","Review Kode Pull Request - 897","Melakukan code review terhadap fitur yang baru dikerjakan developer.","In Progress","2026-01-09","Dalima Hassanah S.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("25","2","Review Kode Pull Request - 935","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-02-01","Dewi Melani","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO tasks VALUES
("1","1","Rapat Evaluasi Tim - 950","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","In Progress","2026-01-11","Latika Safitri S.Ked","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","1","Optimasi Kinerja Server - 818","Mengecek celah keamanan pada sistem pembayaran.","To Do","2026-01-25","Ana Ilsa Nuraini M.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("3","1","Review Kode Pull Request - 735","Mempresentasikan ide proyek baru kepada manajemen.","To Do","2026-01-12","Sarah Widiastuti S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("4","1","Backup Database - 946","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-23","Kalim Mansur","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("5","1","Desain Ulang Homepage - 441","Mengecek celah keamanan pada sistem pembayaran.","Done","2026-01-18","Sarah Widiastuti S.H.","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("6","1","Membuat Laporan Bulanan - 615","Mempresentasikan ide proyek baru kepada manajemen.","In Progress","2026-01-12","Yusuf Ivan Dabukke","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("7","1","Rapat Evaluasi Tim - 827","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-01-10","Ulya Melani S.Psi","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("8","1","Analisis Kompetitor - 625","Merencanakan pengeluaran operasional untuk kuartal ketiga.","In Progress","2026-01-29","Capa Hidayat S.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("9","1","Audit Keamanan Sistem - 789","Meningkatkan kecepatan loading website dengan caching.","To Do","2026-01-30","Adika Sitompul","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("10","1","Pelatihan Karyawan Baru - 737","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","Done","2026-02-07","Amelia Aryani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("11","1","Perbaikan Bug Login - 771","Memperbarui dokumentasi API agar sesuai dengan versi terbaru.","In Progress","2026-02-06","Hafshah Anggraini S.I.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("12","1","Membuat Laporan Bulanan - 892","Memindahkan data dari server lama ke server cloud baru.","In Progress","2026-01-16","Dono Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("13","1","Backup Database - 117","Membuat mockup desain baru untuk halaman utama website.","Done","2026-02-02","Karsana Lanang Tarihoran M.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("14","2","Analisis Kompetitor - 760","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-15","Mutia Usamah","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("15","2","Perbaikan Bug Login - 981","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-19","Jail Tasnim Prasetyo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("16","2","Audit Keamanan Sistem - 816","Mengevaluasi kinerja tim selama satu sprint terakhir.","Done","2026-01-24","Langgeng Prayoga","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("17","2","Pelatihan Karyawan Baru - 601","Menyusun laporan keuangan dan operasional untuk bulan ini.","Done","2026-02-05","Gawati Handayani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("18","2","Optimasi Kinerja Server - 039","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-11","Qori Gawati Palastri S.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("19","2","Perbaikan Bug Login - 731","Merencanakan pengeluaran operasional untuk kuartal ketiga.","Done","2026-01-14","Umar Pradipta","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("20","2","Review Kode Pull Request - 431","Mengevaluasi kinerja tim selama satu sprint terakhir.","To Do","2026-01-26","Eka Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("21","2","Audit Keamanan Sistem - 979","Membuat mockup desain baru untuk halaman utama website.","Done","2026-01-14","Gawati Widiastuti","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("22","2","Optimasi Kinerja Server - 030","Membuat mockup desain baru untuk halaman utama website.","In Progress","2026-01-24","Bajragin Simbolon","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("23","2","Audit Keamanan Sistem - 719","Melakukan backup rutin database untuk mencegah kehilangan data.","To Do","2026-01-20","Maida Carla Maryati S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("24","2","Review Kode Pull Request - 897","Melakukan code review terhadap fitur yang baru dikerjakan developer.","In Progress","2026-01-09","Dalima Hassanah S.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("25","2","Review Kode Pull Request - 935","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-02-01","Dewi Melani","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO tasks VALUES
("1","1","Rapat Evaluasi Tim - 950","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","In Progress","2026-01-11","Latika Safitri S.Ked","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","1","Optimasi Kinerja Server - 818","Mengecek celah keamanan pada sistem pembayaran.","To Do","2026-01-25","Ana Ilsa Nuraini M.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("3","1","Review Kode Pull Request - 735","Mempresentasikan ide proyek baru kepada manajemen.","To Do","2026-01-12","Sarah Widiastuti S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("4","1","Backup Database - 946","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-23","Kalim Mansur","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("5","1","Desain Ulang Homepage - 441","Mengecek celah keamanan pada sistem pembayaran.","Done","2026-01-18","Sarah Widiastuti S.H.","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("6","1","Membuat Laporan Bulanan - 615","Mempresentasikan ide proyek baru kepada manajemen.","In Progress","2026-01-12","Yusuf Ivan Dabukke","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("7","1","Rapat Evaluasi Tim - 827","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-01-10","Ulya Melani S.Psi","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("8","1","Analisis Kompetitor - 625","Merencanakan pengeluaran operasional untuk kuartal ketiga.","In Progress","2026-01-29","Capa Hidayat S.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("9","1","Audit Keamanan Sistem - 789","Meningkatkan kecepatan loading website dengan caching.","To Do","2026-01-30","Adika Sitompul","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("10","1","Pelatihan Karyawan Baru - 737","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","Done","2026-02-07","Amelia Aryani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("11","1","Perbaikan Bug Login - 771","Memperbarui dokumentasi API agar sesuai dengan versi terbaru.","In Progress","2026-02-06","Hafshah Anggraini S.I.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("12","1","Membuat Laporan Bulanan - 892","Memindahkan data dari server lama ke server cloud baru.","In Progress","2026-01-16","Dono Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("13","1","Backup Database - 117","Membuat mockup desain baru untuk halaman utama website.","Done","2026-02-02","Karsana Lanang Tarihoran M.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("14","2","Analisis Kompetitor - 760","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-15","Mutia Usamah","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("15","2","Perbaikan Bug Login - 981","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-19","Jail Tasnim Prasetyo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("16","2","Audit Keamanan Sistem - 816","Mengevaluasi kinerja tim selama satu sprint terakhir.","Done","2026-01-24","Langgeng Prayoga","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("17","2","Pelatihan Karyawan Baru - 601","Menyusun laporan keuangan dan operasional untuk bulan ini.","Done","2026-02-05","Gawati Handayani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("18","2","Optimasi Kinerja Server - 039","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-11","Qori Gawati Palastri S.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("19","2","Perbaikan Bug Login - 731","Merencanakan pengeluaran operasional untuk kuartal ketiga.","Done","2026-01-14","Umar Pradipta","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("20","2","Review Kode Pull Request - 431","Mengevaluasi kinerja tim selama satu sprint terakhir.","To Do","2026-01-26","Eka Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("21","2","Audit Keamanan Sistem - 979","Membuat mockup desain baru untuk halaman utama website.","Done","2026-01-14","Gawati Widiastuti","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("22","2","Optimasi Kinerja Server - 030","Membuat mockup desain baru untuk halaman utama website.","In Progress","2026-01-24","Bajragin Simbolon","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("23","2","Audit Keamanan Sistem - 719","Melakukan backup rutin database untuk mencegah kehilangan data.","To Do","2026-01-20","Maida Carla Maryati S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("24","2","Review Kode Pull Request - 897","Melakukan code review terhadap fitur yang baru dikerjakan developer.","In Progress","2026-01-09","Dalima Hassanah S.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("25","2","Review Kode Pull Request - 935","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-02-01","Dewi Melani","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO tasks VALUES
("1","1","Rapat Evaluasi Tim - 950","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","In Progress","2026-01-11","Latika Safitri S.Ked","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","1","Optimasi Kinerja Server - 818","Mengecek celah keamanan pada sistem pembayaran.","To Do","2026-01-25","Ana Ilsa Nuraini M.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("3","1","Review Kode Pull Request - 735","Mempresentasikan ide proyek baru kepada manajemen.","To Do","2026-01-12","Sarah Widiastuti S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("4","1","Backup Database - 946","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-23","Kalim Mansur","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("5","1","Desain Ulang Homepage - 441","Mengecek celah keamanan pada sistem pembayaran.","Done","2026-01-18","Sarah Widiastuti S.H.","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("6","1","Membuat Laporan Bulanan - 615","Mempresentasikan ide proyek baru kepada manajemen.","In Progress","2026-01-12","Yusuf Ivan Dabukke","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("7","1","Rapat Evaluasi Tim - 827","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-01-10","Ulya Melani S.Psi","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("8","1","Analisis Kompetitor - 625","Merencanakan pengeluaran operasional untuk kuartal ketiga.","In Progress","2026-01-29","Capa Hidayat S.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("9","1","Audit Keamanan Sistem - 789","Meningkatkan kecepatan loading website dengan caching.","To Do","2026-01-30","Adika Sitompul","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("10","1","Pelatihan Karyawan Baru - 737","Menganalisis strategi pemasaran yang dilakukan oleh kompetitor.","Done","2026-02-07","Amelia Aryani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("11","1","Perbaikan Bug Login - 771","Memperbarui dokumentasi API agar sesuai dengan versi terbaru.","In Progress","2026-02-06","Hafshah Anggraini S.I.Kom","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("12","1","Membuat Laporan Bulanan - 892","Memindahkan data dari server lama ke server cloud baru.","In Progress","2026-01-16","Dono Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("13","1","Backup Database - 117","Membuat mockup desain baru untuk halaman utama website.","Done","2026-02-02","Karsana Lanang Tarihoran M.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("14","2","Analisis Kompetitor - 760","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-15","Mutia Usamah","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("15","2","Perbaikan Bug Login - 981","Memberikan materi onboarding kepada staff IT baru.","To Do","2026-01-19","Jail Tasnim Prasetyo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("16","2","Audit Keamanan Sistem - 816","Mengevaluasi kinerja tim selama satu sprint terakhir.","Done","2026-01-24","Langgeng Prayoga","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("17","2","Pelatihan Karyawan Baru - 601","Menyusun laporan keuangan dan operasional untuk bulan ini.","Done","2026-02-05","Gawati Handayani","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("18","2","Optimasi Kinerja Server - 039","Memperbaiki masalah autentikasi saat pengguna mencoba login via Google.","In Progress","2026-01-11","Qori Gawati Palastri S.Farm","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("19","2","Perbaikan Bug Login - 731","Merencanakan pengeluaran operasional untuk kuartal ketiga.","Done","2026-01-14","Umar Pradipta","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("20","2","Review Kode Pull Request - 431","Mengevaluasi kinerja tim selama satu sprint terakhir.","To Do","2026-01-26","Eka Widodo","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("21","2","Audit Keamanan Sistem - 979","Membuat mockup desain baru untuk halaman utama website.","Done","2026-01-14","Gawati Widiastuti","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("22","2","Optimasi Kinerja Server - 030","Membuat mockup desain baru untuk halaman utama website.","In Progress","2026-01-24","Bajragin Simbolon","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("23","2","Audit Keamanan Sistem - 719","Melakukan backup rutin database untuk mencegah kehilangan data.","To Do","2026-01-20","Maida Carla Maryati S.Pt","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("24","2","Review Kode Pull Request - 897","Melakukan code review terhadap fitur yang baru dikerjakan developer.","In Progress","2026-01-09","Dalima Hassanah S.Pd","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("25","2","Review Kode Pull Request - 935","Diskusi mengenai kebutuhan fitur baru untuk aplikasi mobile.","Done","2026-02-01","Dewi Melani","2026-01-08 07:46:39","2026-01-08 07:46:39");




CREATE TABLE `users` (
  `user_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO users VALUES
("1","Test User","darren.powlowski","test@example.com","2026-01-08 07:46:38","$2y$12$ksx7RIsNyQxrvNRFAiYSz.m3Km/ExXWXeugHHzRL9cz4K2mhNXbyC","user","nB66DttPz7","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","Admin User","qbernier","admin@gmail.com","2026-01-08 07:46:39","$2y$12$1DpQYrSlrVJffHx7LfG04uFfXsWIb9Vhi2ISkgT2ZrlIILiC.U6Dm","user","gxcriHRzpW","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO users VALUES
("1","Test User","darren.powlowski","test@example.com","2026-01-08 07:46:38","$2y$12$ksx7RIsNyQxrvNRFAiYSz.m3Km/ExXWXeugHHzRL9cz4K2mhNXbyC","user","nB66DttPz7","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","Admin User","qbernier","admin@gmail.com","2026-01-08 07:46:39","$2y$12$1DpQYrSlrVJffHx7LfG04uFfXsWIb9Vhi2ISkgT2ZrlIILiC.U6Dm","user","gxcriHRzpW","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO users VALUES
("1","Test User","darren.powlowski","test@example.com","2026-01-08 07:46:38","$2y$12$ksx7RIsNyQxrvNRFAiYSz.m3Km/ExXWXeugHHzRL9cz4K2mhNXbyC","user","nB66DttPz7","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","Admin User","qbernier","admin@gmail.com","2026-01-08 07:46:39","$2y$12$1DpQYrSlrVJffHx7LfG04uFfXsWIb9Vhi2ISkgT2ZrlIILiC.U6Dm","user","gxcriHRzpW","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO users VALUES
("1","Test User","darren.powlowski","test@example.com","2026-01-08 07:46:38","$2y$12$ksx7RIsNyQxrvNRFAiYSz.m3Km/ExXWXeugHHzRL9cz4K2mhNXbyC","user","nB66DttPz7","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","Admin User","qbernier","admin@gmail.com","2026-01-08 07:46:39","$2y$12$1DpQYrSlrVJffHx7LfG04uFfXsWIb9Vhi2ISkgT2ZrlIILiC.U6Dm","user","gxcriHRzpW","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO users VALUES
("1","Test User","darren.powlowski","test@example.com","2026-01-08 07:46:38","$2y$12$ksx7RIsNyQxrvNRFAiYSz.m3Km/ExXWXeugHHzRL9cz4K2mhNXbyC","user","nB66DttPz7","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","Admin User","qbernier","admin@gmail.com","2026-01-08 07:46:39","$2y$12$1DpQYrSlrVJffHx7LfG04uFfXsWIb9Vhi2ISkgT2ZrlIILiC.U6Dm","user","gxcriHRzpW","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO users VALUES
("1","Test User","darren.powlowski","test@example.com","2026-01-08 07:46:38","$2y$12$ksx7RIsNyQxrvNRFAiYSz.m3Km/ExXWXeugHHzRL9cz4K2mhNXbyC","user","nB66DttPz7","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","Admin User","qbernier","admin@gmail.com","2026-01-08 07:46:39","$2y$12$1DpQYrSlrVJffHx7LfG04uFfXsWIb9Vhi2ISkgT2ZrlIILiC.U6Dm","user","gxcriHRzpW","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO users VALUES
("1","Test User","darren.powlowski","test@example.com","2026-01-08 07:46:38","$2y$12$ksx7RIsNyQxrvNRFAiYSz.m3Km/ExXWXeugHHzRL9cz4K2mhNXbyC","user","nB66DttPz7","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","Admin User","qbernier","admin@gmail.com","2026-01-08 07:46:39","$2y$12$1DpQYrSlrVJffHx7LfG04uFfXsWIb9Vhi2ISkgT2ZrlIILiC.U6Dm","user","gxcriHRzpW","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO users VALUES
("1","Test User","darren.powlowski","test@example.com","2026-01-08 07:46:38","$2y$12$ksx7RIsNyQxrvNRFAiYSz.m3Km/ExXWXeugHHzRL9cz4K2mhNXbyC","user","nB66DttPz7","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","Admin User","qbernier","admin@gmail.com","2026-01-08 07:46:39","$2y$12$1DpQYrSlrVJffHx7LfG04uFfXsWIb9Vhi2ISkgT2ZrlIILiC.U6Dm","user","gxcriHRzpW","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO users VALUES
("1","Test User","darren.powlowski","test@example.com","2026-01-08 07:46:38","$2y$12$ksx7RIsNyQxrvNRFAiYSz.m3Km/ExXWXeugHHzRL9cz4K2mhNXbyC","user","nB66DttPz7","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","Admin User","qbernier","admin@gmail.com","2026-01-08 07:46:39","$2y$12$1DpQYrSlrVJffHx7LfG04uFfXsWIb9Vhi2ISkgT2ZrlIILiC.U6Dm","user","gxcriHRzpW","2026-01-08 07:46:39","2026-01-08 07:46:39");
INSERT INTO users VALUES
("1","Test User","darren.powlowski","test@example.com","2026-01-08 07:46:38","$2y$12$ksx7RIsNyQxrvNRFAiYSz.m3Km/ExXWXeugHHzRL9cz4K2mhNXbyC","user","nB66DttPz7","2026-01-08 07:46:39","2026-01-08 07:46:39"),
("2","Admin User","qbernier","admin@gmail.com","2026-01-08 07:46:39","$2y$12$1DpQYrSlrVJffHx7LfG04uFfXsWIb9Vhi2ISkgT2ZrlIILiC.U6Dm","user","gxcriHRzpW","2026-01-08 07:46:39","2026-01-08 07:46:39");



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
