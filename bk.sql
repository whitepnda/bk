-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30 Jan 2018 pada 07.15
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_agenda`
--

CREATE TABLE `bk_agenda` (
  `id_agenda` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `kegiatan` text NOT NULL,
  `keterangan` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_agenda`
--

INSERT INTO `bk_agenda` (`id_agenda`, `tgl`, `kegiatan`, `keterangan`, `status`) VALUES
(1, '2017-01-07', 'test test', 'test test', 0),
(2, '2017-01-31', 'test', 'test', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_anekdot`
--

CREATE TABLE `bk_anekdot` (
  `id_anekdot` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `tgl_kejadian` date NOT NULL,
  `tempat_kejadian` text NOT NULL,
  `ket_kejadian` text NOT NULL,
  `tindak_lanjut` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_anekdot`
--

INSERT INTO `bk_anekdot` (`id_anekdot`, `id_student`, `tgl_kejadian`, `tempat_kejadian`, `ket_kejadian`, `tindak_lanjut`, `status`) VALUES
(1, 3, '2017-01-14', 'test test', 'test test', 'test test test', 0),
(2, 4, '2017-01-07', 'test test', 'test test test ', 'tset tstt ststetset ', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_data_konsultasi`
--

CREATE TABLE `bk_data_konsultasi` (
  `id_data_konsultasi` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `menghadap` text NOT NULL,
  `jam_ke` varchar(400) NOT NULL,
  `selesai_pukul` varchar(400) NOT NULL,
  `selesai_jam_ke` varchar(400) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_data_konsultasi`
--

INSERT INTO `bk_data_konsultasi` (`id_data_konsultasi`, `id_student`, `menghadap`, `jam_ke`, `selesai_pukul`, `selesai_jam_ke`, `status`) VALUES
(1, 1, 'Bpk sujana', '2', '15:00', '3', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_guru`
--

CREATE TABLE `bk_guru` (
  `id_guru` int(11) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_guru`
--

INSERT INTO `bk_guru` (`id_guru`, `nik`, `nama`, `kelas`, `password`, `status`) VALUES
(1, '197807162005022004', 'Nurul Khasanah, S.Psi', 'X.MIA 1-6, X.IIS 1-4', '', 0),
(2, '197807162005022005', 'Tri Setiawan Budianto, S.pd', 'XII.MIA 1-6 , XII IIS 1-3', '', 0),
(3, '197807162005022006', 'Ratna Agustina, S.Pd', 'XI.MIA 1-3', '', 0),
(4, '197807162005022007', 'Abdul Syukur, S.Pd', 'XI.MIA 4-6, XI.IIS 1-9', '', 0),
(5, '197807162005022008', 'Akbar maulana Ibrahim, S.Pd', 'XI.MIA 4-6, XI.IIS 1-5', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_hasil_konferensi`
--

CREATE TABLE `bk_hasil_konferensi` (
  `id_hasil_konferensi` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `deskripsi_kasus` text NOT NULL,
  `nama_1` varchar(400) NOT NULL,
  `nama_2` varchar(400) NOT NULL,
  `nama_3` varchar(400) NOT NULL,
  `nama_4` varchar(400) NOT NULL,
  `nama_5` varchar(400) NOT NULL,
  `jabatan_1` varchar(400) NOT NULL,
  `jabatan_2` varchar(400) NOT NULL,
  `jabatan_3` varchar(400) NOT NULL,
  `jabatan_4` varchar(400) NOT NULL,
  `jabatan_5` varchar(400) NOT NULL,
  `hasil` text NOT NULL,
  `evaluasi` text NOT NULL,
  `catatan` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_hasil_konferensi`
--

INSERT INTO `bk_hasil_konferensi` (`id_hasil_konferensi`, `id_student`, `tanggal`, `deskripsi_kasus`, `nama_1`, `nama_2`, `nama_3`, `nama_4`, `nama_5`, `jabatan_1`, `jabatan_2`, `jabatan_3`, `jabatan_4`, `jabatan_5`, `hasil`, `evaluasi`, `catatan`, `status`) VALUES
(1, 1, '2017-01-05', 'test x', 'test peserta ', 'test2 peserta', 'test3 peserta', 'test4 peserta ', 'test5 peserta', 'test x', 'test2 x', 'test3 x', 'test4 x', 'test5 x', 'test x', 'test x', 'test x', 0),
(2, 4, '2017-01-07', 'test x', 'test', 'test2', 'test3', 'test4', 'test5', 'test', 'test2', 'test3', 'test4', 'test5', 'test', 'testt', 'loreme', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_home_visit`
--

CREATE TABLE `bk_home_visit` (
  `id_home_visit` int(11) NOT NULL,
  `no_surat` varchar(400) NOT NULL,
  `nama` varchar(400) NOT NULL,
  `nip` varchar(400) NOT NULL,
  `jabatan` varchar(400) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `tempat` text NOT NULL,
  `keperluan` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_home_visit`
--

INSERT INTO `bk_home_visit` (`id_home_visit`, `no_surat`, `nama`, `nip`, `jabatan`, `tanggal`, `waktu`, `tempat`, `keperluan`, `status`) VALUES
(1, '12109878878', 'joko dwi hananto', '121090909090901', 'guru', '2016-12-03', '21:00:00', 'rumah Bpk asep saepudin', 'mengunjungi rumah untuk home visit  di rumah pak asep', 0),
(2, '12109878878', 'bunyamin', '12109090909090', 'guru', '2016-12-02', '09:00:00', 'rumah bapak mahmud', 'mengunjungi rumah murid', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_kartu_status_konseling`
--

CREATE TABLE `bk_kartu_status_konseling` (
  `id_kartu_konseling` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `nis` varchar(120) NOT NULL,
  `nama_siswa` varchar(120) NOT NULL,
  `nama_panggilan` varchar(400) NOT NULL,
  `tempat_lahir` varchar(120) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama1` tinyint(1) NOT NULL,
  `anak_dari` varchar(10) NOT NULL,
  `jumlah_keluarga` varchar(10) NOT NULL,
  `alamat_orangtua` text NOT NULL,
  `telpon` varchar(120) NOT NULL,
  `kelas` varchar(120) NOT NULL,
  `date` date NOT NULL,
  `masalah_siswa` varchar(120) NOT NULL,
  `penanganan` varchar(120) NOT NULL,
  `tanda_tangan` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_konseling_individu`
--

CREATE TABLE `bk_konseling_individu` (
  `id_konseling_individu` int(11) NOT NULL,
  `format` varchar(400) NOT NULL,
  `tanggal_pelayanan` date NOT NULL,
  `pertemuan_ke` int(11) NOT NULL,
  `klasifikasi_umum` varchar(400) NOT NULL,
  `belajar` varchar(400) NOT NULL,
  `deskrpisi_masalah` text NOT NULL,
  `diagnosa1` text NOT NULL,
  `diagnosa2` text NOT NULL,
  `diagnosa3` text NOT NULL,
  `prognosa1` text NOT NULL,
  `prognosa2` text NOT NULL,
  `prognosa3` text NOT NULL,
  `tahap` text NOT NULL,
  `treatment` text NOT NULL,
  `teknis` text NOT NULL,
  `understanding` text NOT NULL,
  `comfort` text NOT NULL,
  `action` text NOT NULL,
  `tindak_lanjut` text NOT NULL,
  `id_student` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_konseling_individu`
--

INSERT INTO `bk_konseling_individu` (`id_konseling_individu`, `format`, `tanggal_pelayanan`, `pertemuan_ke`, `klasifikasi_umum`, `belajar`, `deskrpisi_masalah`, `diagnosa1`, `diagnosa2`, `diagnosa3`, `prognosa1`, `prognosa2`, `prognosa3`, `tahap`, `treatment`, `teknis`, `understanding`, `comfort`, `action`, `tindak_lanjut`, `id_student`, `status`) VALUES
(1, 'individu', '2017-01-03', 2, 'edk', 's', 'karena bermasalah', 'anak nakal', 'anak nakal', 'anak nakal', 'anak nakal', 'anak nakal', 'anak nakal', 'teratment', 'teratment', 'harus sering piknik', 'test', 'test', 'test', 'test test', 1, 0),
(2, 'kelompok', '2017-01-14', 1, 'edk', 't', 'karena bermasalah test', 'anak nakal test', 'anak nakal test', 'anak nakal tset', 'anak nakal test', 'anak nakal tset', 'anak nakal test ', 'teratment test', 'teratment test', 'harus sering piknik test', 'test test', 'test test', 'test test', 'test test test', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_orangtua`
--

CREATE TABLE `bk_orangtua` (
  `id_orangtua` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `nis` varchar(100) NOT NULL,
  `nama_anak` varchar(120) NOT NULL,
  `nama_orangtua` varchar(120) NOT NULL,
  `alamat_rumah` text NOT NULL,
  `telp` varchar(100) NOT NULL,
  `tempat_lahir` varchar(500) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_orangtua`
--

INSERT INTO `bk_orangtua` (`id_orangtua`, `id_student`, `nis`, `nama_anak`, `nama_orangtua`, `alamat_rumah`, `telp`, `tempat_lahir`, `tanggal_lahir`, `status`) VALUES
(1, 1, '3105111364', 'akbar pamungkas', 'joko', 'jl.komodo', '0878777666534', 'bekasi', '1899-12-12', 0),
(2, 2, '3105111365', 'andika', 'budiono', 'jl.komodo', '085988763234', 'medan', '1988-10-09', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_rujukan_alih_tangan_kasus`
--

CREATE TABLE `bk_rujukan_alih_tangan_kasus` (
  `id_rujukan_alih_tangan_kasus` int(11) NOT NULL,
  `no_surat` varchar(400) NOT NULL,
  `perihal` text NOT NULL,
  `pekerjaan` text NOT NULL,
  `masalah` text NOT NULL,
  `hasil_konseling` text NOT NULL,
  `catatan_khusus` text NOT NULL,
  `yang_diundang` text NOT NULL,
  `jabatan` text NOT NULL,
  `di` text NOT NULL,
  `id_student` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_rujukan_alih_tangan_kasus`
--

INSERT INTO `bk_rujukan_alih_tangan_kasus` (`id_rujukan_alih_tangan_kasus`, `no_surat`, `perihal`, `pekerjaan`, `masalah`, `hasil_konseling`, `catatan_khusus`, `yang_diundang`, `jabatan`, `di`, `id_student`, `date`, `status`) VALUES
(1, '12109878878', 'test1', 'test1', 'test1', 'test1', 'test1', 'test1', '1test', 'test1', 4, '2017-01-15 06:57:28', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_satkung_alih_tangan_kasus`
--

CREATE TABLE `bk_satkung_alih_tangan_kasus` (
  `id_satkung_alih_tangan_kasus` int(11) NOT NULL,
  `topik` text NOT NULL,
  `bidang_bimbingan` text NOT NULL,
  `jenis_kegiatan` text NOT NULL,
  `fungsi_kegiatan` text NOT NULL,
  `tujuan_kegiatan` text NOT NULL,
  `hasil` text NOT NULL,
  `subjek` text NOT NULL,
  `ringkas` text NOT NULL,
  `kepada` text NOT NULL,
  `alasan` text NOT NULL,
  `kapan` text NOT NULL,
  `bahan` text NOT NULL,
  `pendukung` text NOT NULL,
  `tindak_lanjut` text NOT NULL,
  `catatan_khusus` text NOT NULL,
  `id_student` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_satkung_alih_tangan_kasus`
--

INSERT INTO `bk_satkung_alih_tangan_kasus` (`id_satkung_alih_tangan_kasus`, `topik`, `bidang_bimbingan`, `jenis_kegiatan`, `fungsi_kegiatan`, `tujuan_kegiatan`, `hasil`, `subjek`, `ringkas`, `kepada`, `alasan`, `kapan`, `bahan`, `pendukung`, `tindak_lanjut`, `catatan_khusus`, `id_student`, `status`, `date`) VALUES
(1, 'topik1', 'bidang1', 'jenis1', 'fungsi1', 'tujuan1', 'hasil1', 'subjek1', 'gambaran1', 'kepada siapa 1', 'alasan1', 'kapan1', 'bahan1', 'kegiatan terhadulu1', 'rencana tindak lanjut 11', 'catatan khusus1', 4, 0, '2017-01-15 04:29:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_satkung_home_visit`
--

CREATE TABLE `bk_satkung_home_visit` (
  `id_satkung_home_visit` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `sasaran_pelayanan` varchar(400) NOT NULL,
  `topik` varchar(400) NOT NULL,
  `bidang_layanan` varchar(400) NOT NULL,
  `jenis_layanan` varchar(400) NOT NULL,
  `fungsi_layanan` varchar(400) NOT NULL,
  `kompetensi` varchar(400) NOT NULL,
  `bentuk_kegiatan` varchar(400) NOT NULL,
  `alokasi_waktu` varchar(400) NOT NULL,
  `waktu_pelaksanaan` varchar(400) NOT NULL,
  `tempat_kegiatan` varchar(400) NOT NULL,
  `pelaksana_kegiatan` varchar(400) NOT NULL,
  `pihak` varchar(400) NOT NULL,
  `alat` varchar(400) NOT NULL,
  `konselor` varchar(400) NOT NULL,
  `konseli` varchar(400) NOT NULL,
  `laiseg` varchar(400) NOT NULL,
  `laijapen` varchar(400) NOT NULL,
  `laijapang` varchar(400) NOT NULL,
  `rencana_tidak_lanjut` text NOT NULL,
  `pembiayaan` varchar(400) NOT NULL,
  `tahun_ajaran` varchar(400) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_satkung_home_visit`
--

INSERT INTO `bk_satkung_home_visit` (`id_satkung_home_visit`, `id_student`, `sasaran_pelayanan`, `topik`, `bidang_layanan`, `jenis_layanan`, `fungsi_layanan`, `kompetensi`, `bentuk_kegiatan`, `alokasi_waktu`, `waktu_pelaksanaan`, `tempat_kegiatan`, `pelaksana_kegiatan`, `pihak`, `alat`, `konselor`, `konseli`, `laiseg`, `laijapen`, `laijapang`, `rencana_tidak_lanjut`, `pembiayaan`, `tahun_ajaran`, `status`) VALUES
(1, 1, 'akbar pamungkas', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'tset', 'test', 'akbar pamungkas', 'test', 'test', 'test', 'tset', 'tset', '0000-00-00', 0),
(2, 2, 'prabu', '2test1', '2test1', 'test12', 'test12', 'test12', 'test12', 'test2', 'test12', 'test12', 'test12', 'test12', 'tset12', 'test12', 'prabu', 'test12', 'test12', 'test12', 'tset12', 'tset12', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_sekolah`
--

CREATE TABLE `bk_sekolah` (
  `id_sekolah` int(11) NOT NULL,
  `kop_surat1` text NOT NULL,
  `kop_surat2` text NOT NULL,
  `nama` varchar(400) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `email` varchar(500) NOT NULL,
  `situs` text NOT NULL,
  `kepsek` varchar(500) NOT NULL,
  `nip` varchar(200) NOT NULL,
  `kota` text NOT NULL,
  `provinsi` text NOT NULL,
  `logo_sekolah` text NOT NULL,
  `logo_kabupaten` text NOT NULL,
  `logo_iso` varchar(400) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_sekolah`
--

INSERT INTO `bk_sekolah` (`id_sekolah`, `kop_surat1`, `kop_surat2`, `nama`, `alamat`, `telp`, `fax`, `email`, `situs`, `kepsek`, `nip`, `kota`, `provinsi`, `logo_sekolah`, `logo_kabupaten`, `logo_iso`, `status`) VALUES
(1, 'Dinas pendidikan dan kebudayaan			', '							', 'test1', 'Jln lorem ipsum no 27			', '02190909011', '02190909011', 'agent1@gmail.com1', 'test.com1', 'Bpk Junaidi1', '1210909090909011', 'Bandung1', 'Jawa Barat1', 'public/upload/logo/Logo_SMAN_1_Bandung.jpg', 'public/upload/logo/kab_bandung.jpg', '', 0),
(1, 'Dinas pendidikan dan kebudayaan			', '							', 'test1', 'Jln lorem ipsum no 27			', '02190909011', '02190909011', 'agent1@gmail.com1', 'test.com1', 'Bpk Junaidi1', '1210909090909011', 'Bandung1', 'Jawa Barat1', 'public/upload/logo/Logo_SMAN_1_Bandung.jpg', 'public/upload/logo/kab_bandung.jpg', '', 0),
(1, 'Dinas pendidikan dan kebudayaan			', '							', 'test1', 'Jln lorem ipsum no 27			', '02190909011', '02190909011', 'agent1@gmail.com1', 'test.com1', 'Bpk Junaidi1', '1210909090909011', 'Bandung1', 'Jawa Barat1', 'public/upload/logo/Logo_SMAN_1_Bandung.jpg', 'public/upload/logo/kab_bandung.jpg', '', 0),
(1, 'Dinas pendidikan dan kebudayaan			', '							', 'test1', 'Jln lorem ipsum no 27			', '02190909011', '02190909011', 'agent1@gmail.com1', 'test.com1', 'Bpk Junaidi1', '1210909090909011', 'Bandung1', 'Jawa Barat1', 'public/upload/logo/Logo_SMAN_1_Bandung.jpg', 'public/upload/logo/kab_bandung.jpg', '', 0),
(1, 'Dinas pendidikan dan kebudayaan			', '							', 'test1', 'Jln lorem ipsum no 27			', '02190909011', '02190909011', 'agent1@gmail.com1', 'test.com1', 'Bpk Junaidi1', '1210909090909011', 'Bandung1', 'Jawa Barat1', 'public/upload/logo/Logo_SMAN_1_Bandung.jpg', 'public/upload/logo/kab_bandung.jpg', '', 0),
(1, 'Dinas pendidikan dan kebudayaan			', '							', 'test1', 'Jln lorem ipsum no 27			', '02190909011', '02190909011', 'agent1@gmail.com1', 'test.com1', 'Bpk Junaidi1', '1210909090909011', 'Bandung1', 'Jawa Barat1', 'public/upload/logo/Logo_SMAN_1_Bandung.jpg', 'public/upload/logo/kab_bandung.jpg', '', 0),
(1, 'Dinas pendidikan dan kebudayaan			', '							', 'test1', 'Jln lorem ipsum no 27			', '02190909011', '02190909011', 'agent1@gmail.com1', 'test.com1', 'Bpk Junaidi1', '1210909090909011', 'Bandung1', 'Jawa Barat1', 'public/upload/logo/Logo_SMAN_1_Bandung.jpg', 'public/upload/logo/kab_bandung.jpg', '', 0),
(1, 'Dinas pendidikan dan kebudayaan			', '							', 'test1', 'Jln lorem ipsum no 27			', '02190909011', '02190909011', 'agent1@gmail.com1', 'test.com1', 'Bpk Junaidi1', '1210909090909011', 'Bandung1', 'Jawa Barat1', 'public/upload/logo/Logo_SMAN_1_Bandung.jpg', 'public/upload/logo/kab_bandung.jpg', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_student`
--

CREATE TABLE `bk_student` (
  `id_student` int(11) NOT NULL,
  `nis` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `photo` text NOT NULL,
  `nama_pangilan` varchar(200) NOT NULL,
  `tempat_lahir` varchar(500) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `telp_rumah` varchar(20) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `alamat_rumah` text NOT NULL,
  `gol_darah` varchar(20) NOT NULL,
  `tinggi_badan` varchar(10) NOT NULL,
  `berat_badan` varchar(10) NOT NULL,
  `jkel` int(11) NOT NULL,
  `agama` tinyint(1) NOT NULL,
  `anak_ke` varchar(10) NOT NULL,
  `jumlah_saudara` varchar(10) NOT NULL,
  `hobby` varchar(500) NOT NULL,
  `thn_pelajaran` varchar(500) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `jurusan` varchar(400) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_student`
--

INSERT INTO `bk_student` (`id_student`, `nis`, `nama`, `photo`, `nama_pangilan`, `tempat_lahir`, `tanggal_lahir`, `telp_rumah`, `hp`, `alamat_rumah`, `gol_darah`, `tinggi_badan`, `berat_badan`, `jkel`, `agama`, `anak_ke`, `jumlah_saudara`, `hobby`, `thn_pelajaran`, `kelas`, `jurusan`, `status`) VALUES
(1, '3105111364', 'akbar pamungkas', 'public/upload/20161217041242.jpg', 'akbar', 'wonogiri', '2016-12-10', '021-1000-001', '09859890890', '021-090990', 'O', '171 cm', '55kg', 1, 1, '1', '3', 'memancing', '2012', 'XII-MIPA -4', 'IPA', 0),
(2, '3105111365', 'andika', 'public/upload/20180125110159.jpg', 'dika', 'bogor', '1999-10-18', '02184995805', '0859888776543', 'jl. ikan paus raya no. 15 D', 'A', '170cm', '60kg', 1, 1, '2', '3', 'sepak bola', '2012', 'XII-MIPA -4', 'IPA', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_undangan_konferensi`
--

CREATE TABLE `bk_undangan_konferensi` (
  `id_undangan_konferensi` int(11) NOT NULL,
  `no_surat` varchar(400) NOT NULL,
  `perihal` text NOT NULL,
  `yang_diundang` text NOT NULL,
  `di` text NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` varchar(400) NOT NULL,
  `tempat` text NOT NULL,
  `keperluan` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_undangan_konferensi`
--

INSERT INTO `bk_undangan_konferensi` (`id_undangan_konferensi`, `no_surat`, `perihal`, `yang_diundang`, `di`, `tanggal`, `waktu`, `tempat`, `keperluan`, `status`) VALUES
(1, '12109878878', 'undangan untuk konferensi kasus', 'bapak abdi', 'tempat', '2017-12-11', '10:00', 'jakarta', 'test test ', 1),
(2, '12109878878', 'undangan untuk konferensi kasus untuk orang tua murid', 'bapak abdi negara', 'tempat', '2017-12-11', '10:00', 'sekolah SMA garut', 'untuk sekiranya dapat menghadirinya agar segera dapat selesai', 0),
(1, '12109878878', 'undangan untuk konferensi kasus', 'bapak abdi', 'tempat', '2017-12-11', '10:00', 'jakarta', 'test test ', 1),
(2, '12109878878', 'undangan untuk konferensi kasus untuk orang tua murid', 'bapak abdi negara', 'tempat', '2017-12-11', '10:00', 'sekolah SMA garut', 'untuk sekiranya dapat menghadirinya agar segera dapat selesai', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_undangan_orang_tua`
--

CREATE TABLE `bk_undangan_orang_tua` (
  `id_undangan_orang_tua` int(11) NOT NULL,
  `no_surat` varchar(400) NOT NULL,
  `perihal` text NOT NULL,
  `id_student` int(11) NOT NULL,
  `orang_tua` varchar(500) NOT NULL,
  `di` varchar(500) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` varchar(400) NOT NULL,
  `tempat` text NOT NULL,
  `keperluan` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_undangan_orang_tua`
--

INSERT INTO `bk_undangan_orang_tua` (`id_undangan_orang_tua`, `no_surat`, `perihal`, `id_student`, `orang_tua`, `di`, `tanggal`, `waktu`, `tempat`, `keperluan`, `status`) VALUES
(1, '12109878878', 'undangan untuk orang tua ', 1, 'Bpk Parmain', 'tempat', '2017-11-02', '10:00', 'sekolah SMA garut', 'untuk perubahan ', 0),
(1, '12109878878', 'undangan untuk orang tua ', 1, 'Bpk Parmain', 'tempat', '2017-11-02', '10:00', 'sekolah SMA garut', 'untuk perubahan ', 0),
(1, '12109878878', 'undangan untuk orang tua ', 1, 'Bpk Parmain', 'tempat', '2017-11-02', '10:00', 'sekolah SMA garut', 'untuk perubahan ', 0),
(1, '12109878878', 'undangan untuk orang tua ', 1, 'Bpk Parmain', 'tempat', '2017-11-02', '10:00', 'sekolah SMA garut', 'untuk perubahan ', 0),
(1, '12109878878', 'undangan untuk orang tua ', 1, 'Bpk Parmain', 'tempat', '2017-11-02', '10:00', 'sekolah SMA garut', 'untuk perubahan ', 0),
(1, '12109878878', 'undangan untuk orang tua ', 1, 'Bpk Parmain', 'tempat', '2017-11-02', '10:00', 'sekolah SMA garut', 'untuk perubahan ', 0),
(1, '12109878878', 'undangan untuk orang tua ', 1, 'Bpk Parmain', 'tempat', '2017-11-02', '10:00', 'sekolah SMA garut', 'untuk perubahan ', 0),
(1, '12109878878', 'undangan untuk orang tua ', 1, 'Bpk Parmain', 'tempat', '2017-11-02', '10:00', 'sekolah SMA garut', 'untuk perubahan ', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_user`
--

CREATE TABLE `bk_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_user`
--

INSERT INTO `bk_user` (`id_user`, `username`, `password`, `level`, `status`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 0),
(5, '123456789', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(6, '13109876', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(7, '12109874', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(8, '14149091', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(9, '12109874', 'c5cfdd9a78d4d841c2de04db24034568', 0, 0),
(10, '14149091', '585fb1c39e506405563bbc93034c59bd', 0, 0),
(11, '1234567890', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(12, '1234567891011', '3fc0a7acf087f549ac2b266baf94b8b1', 0, 0),
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 0),
(5, '123456789', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(6, '13109876', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(7, '12109874', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(8, '14149091', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(9, '12109874', 'c5cfdd9a78d4d841c2de04db24034568', 0, 0),
(10, '14149091', '585fb1c39e506405563bbc93034c59bd', 0, 0),
(11, '1234567890', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(12, '1234567891011', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(13, '1112091', '77e69c137812518e359196bb2f5e9bb9', 3, 1),
(14, '12345678567', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(15, '12345656565', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(16, '1112092', '77e69c137812518e359196bb2f5e9bb9', 3, 1),
(0, '3105111364', 'e10adc3949ba59abbe56e057f20f883e', 0, 1),
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 0),
(5, '123456789', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(6, '13109876', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(7, '12109874', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(8, '14149091', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(9, '12109874', 'c5cfdd9a78d4d841c2de04db24034568', 0, 0),
(10, '14149091', '585fb1c39e506405563bbc93034c59bd', 0, 0),
(11, '1234567890', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(12, '1234567891011', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(13, '1112091', '77e69c137812518e359196bb2f5e9bb9', 3, 1),
(14, '12345678567', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(15, '12345656565', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(16, '1112092', '77e69c137812518e359196bb2f5e9bb9', 3, 1),
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 0),
(5, '123456789', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(6, '13109876', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(7, '12109874', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(8, '14149091', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(9, '12109874', 'c5cfdd9a78d4d841c2de04db24034568', 0, 0),
(10, '14149091', '585fb1c39e506405563bbc93034c59bd', 0, 0),
(11, '1234567890', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(12, '1234567891011', '3fc0a7acf087f549ac2b266baf94b8b1', 0, 0),
(0, '1112092', 'e10adc3949ba59abbe56e057f20f883e', 3, 1),
(0, '197807162005022004', '25d55ad283aa400af464c76d713c07ad', 3, 0),
(0, '197807162005022004', '25d55ad283aa400af464c76d713c07ad', 3, 0),
(0, '197807162005022005', 'fcea920f7412b5da7be0cf42b8c93759', 3, 1),
(0, '197807162005022004', '25d55ad283aa400af464c76d713c07ad', 3, 0),
(0, '197807162005022005', 'fcea920f7412b5da7be0cf42b8c93759', 3, 1),
(0, '197807162005022006', '25f9e794323b453885f5181f1b624d0b', 3, 0),
(0, '197807162005022004', 'e10adc3949ba59abbe56e057f20f883e', 3, 0),
(0, '197807162005022005', 'fcea920f7412b5da7be0cf42b8c93759', 3, 0),
(0, '197807162005022006', '25d55ad283aa400af464c76d713c07ad', 3, 0),
(0, '197807162005022007', '25f9e794323b453885f5181f1b624d0b', 3, 0),
(0, '197807162005022008', 'd41d8cd98f00b204e9800998ecf8427e', 3, 0),
(0, '197807162005022004', 'e10adc3949ba59abbe56e057f20f883e', 3, 0),
(0, '197807162005022005', 'fcea920f7412b5da7be0cf42b8c93759', 3, 0),
(0, '197807162005022006', '25d55ad283aa400af464c76d713c07ad', 3, 0),
(0, '197807162005022007', '25f9e794323b453885f5181f1b624d0b', 3, 0),
(0, '197807162005022004', '827ccb0eea8a706c4c34a16891f84e7b', 3, 0),
(0, '197807162005022005', 'e10adc3949ba59abbe56e057f20f883e', 3, 0),
(0, '197807162005022006', 'fcea920f7412b5da7be0cf42b8c93759', 3, 0),
(0, '197807162005022007', '25d55ad283aa400af464c76d713c07ad', 3, 0),
(0, '197807162005022008', '25f9e794323b453885f5181f1b624d0b', 3, 0),
(0, '1111111111', 'fcea920f7412b5da7be0cf42b8c93759', 0, 0),
(0, '3105111365', '81dc9bdb52d04dc20036dbd8313ed055', 0, 1),
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1),
(5, '123456789', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(6, '13109876', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(7, '12109874', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(8, '14149091', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(9, '12109874', 'c5cfdd9a78d4d841c2de04db24034568', 0, 0),
(10, '14149091', '585fb1c39e506405563bbc93034c59bd', 0, 0),
(11, '1234567890', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(12, '1234567891011', '3fc0a7acf087f549ac2b266baf94b8b1', 0, 0),
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1),
(5, '123456789', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(6, '13109876', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(7, '12109874', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(8, '14149091', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(9, '12109874', 'c5cfdd9a78d4d841c2de04db24034568', 0, 0),
(10, '14149091', '585fb1c39e506405563bbc93034c59bd', 0, 0),
(11, '1234567890', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(12, '1234567891011', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(13, '1112091', '77e69c137812518e359196bb2f5e9bb9', 3, 1),
(14, '12345678567', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(15, '12345656565', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(16, '1112092', '77e69c137812518e359196bb2f5e9bb9', 3, 1),
(0, '3105111364', 'e10adc3949ba59abbe56e057f20f883e', 0, 0),
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1),
(5, '123456789', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(6, '13109876', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(7, '12109874', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(8, '14149091', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(9, '12109874', 'c5cfdd9a78d4d841c2de04db24034568', 0, 0),
(10, '14149091', '585fb1c39e506405563bbc93034c59bd', 0, 0),
(11, '1234567890', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(12, '1234567891011', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(13, '1112091', '77e69c137812518e359196bb2f5e9bb9', 3, 1),
(14, '12345678567', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(15, '12345656565', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(16, '1112092', '77e69c137812518e359196bb2f5e9bb9', 3, 1),
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 0),
(5, '123456789', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(6, '13109876', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(7, '12109874', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(8, '14149091', '21232f297a57a5a743894a0e4a801fc3', 0, 0),
(9, '12109874', 'c5cfdd9a78d4d841c2de04db24034568', 0, 0),
(10, '14149091', '585fb1c39e506405563bbc93034c59bd', 0, 0),
(11, '1234567890', '21232f297a57a5a743894a0e4a801fc3', 2, 0),
(12, '1234567891011', '3fc0a7acf087f549ac2b266baf94b8b1', 0, 0),
(0, '1112092', 'e10adc3949ba59abbe56e057f20f883e', 3, 1),
(0, '197807162005022004', '25d55ad283aa400af464c76d713c07ad', 3, 0),
(0, '197807162005022004', '25d55ad283aa400af464c76d713c07ad', 3, 0),
(0, '197807162005022005', 'fcea920f7412b5da7be0cf42b8c93759', 3, 1),
(0, '197807162005022004', '25d55ad283aa400af464c76d713c07ad', 3, 0),
(0, '197807162005022005', 'fcea920f7412b5da7be0cf42b8c93759', 3, 1),
(0, '197807162005022006', '25f9e794323b453885f5181f1b624d0b', 3, 0),
(0, '197807162005022004', 'e10adc3949ba59abbe56e057f20f883e', 3, 0),
(0, '197807162005022005', 'fcea920f7412b5da7be0cf42b8c93759', 3, 0),
(0, '197807162005022006', '25d55ad283aa400af464c76d713c07ad', 3, 0),
(0, '197807162005022007', '25f9e794323b453885f5181f1b624d0b', 3, 0),
(0, '197807162005022008', 'd41d8cd98f00b204e9800998ecf8427e', 3, 0),
(0, '197807162005022004', 'e10adc3949ba59abbe56e057f20f883e', 3, 0),
(0, '197807162005022005', 'fcea920f7412b5da7be0cf42b8c93759', 3, 0),
(0, '197807162005022006', '25d55ad283aa400af464c76d713c07ad', 3, 0),
(0, '197807162005022007', '25f9e794323b453885f5181f1b624d0b', 3, 0),
(0, '197807162005022004', '827ccb0eea8a706c4c34a16891f84e7b', 3, 0),
(0, '197807162005022005', 'e10adc3949ba59abbe56e057f20f883e', 3, 0),
(0, '197807162005022006', 'fcea920f7412b5da7be0cf42b8c93759', 3, 0),
(0, '197807162005022007', '25d55ad283aa400af464c76d713c07ad', 3, 0),
(0, '197807162005022008', '25f9e794323b453885f5181f1b624d0b', 3, 0),
(0, '1111111111', 'fcea920f7412b5da7be0cf42b8c93759', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bk_visit`
--

CREATE TABLE `bk_visit` (
  `id_kunjungan` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `nama_petugas_1` varchar(400) NOT NULL,
  `nip_petugas_1` varchar(400) NOT NULL,
  `nama_petugas_2` varchar(400) NOT NULL,
  `nip_petugas_2` varchar(400) NOT NULL,
  `jabatan_1` varchar(400) NOT NULL,
  `jabatan_2` varchar(400) NOT NULL,
  `hasil` text NOT NULL,
  `tgl_kunjungan` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bk_visit`
--

INSERT INTO `bk_visit` (`id_kunjungan`, `id_student`, `nama_petugas_1`, `nip_petugas_1`, `nama_petugas_2`, `nip_petugas_2`, `jabatan_1`, `jabatan_2`, `hasil`, `tgl_kunjungan`, `status`) VALUES
(1, 2, 'bunyamin b', '121209091', 'akbarb', '121209012', 'guru b', 'gurub', 'malas malasan di rumahb', '2016-12-09', 0),
(2, 4, 'bunyamin', '12120909', 'akbar', '12120901', 'guru', 'guru', 'main game di rumah', '2016-12-01', 0),
(1, 2, 'bunyamin b', '121209091', 'akbarb', '121209012', 'guru b', 'gurub', 'malas malasan di rumahb', '2016-12-09', 0),
(2, 4, 'bunyamin', '12120909', 'akbar', '12120901', 'guru', 'guru', 'main game di rumah', '2016-12-01', 0),
(1, 2, 'bunyamin b', '121209091', 'akbarb', '121209012', 'guru b', 'gurub', 'malas malasan di rumahb', '2016-12-09', 0),
(2, 4, 'bunyamin', '12120909', 'akbar', '12120901', 'guru', 'guru', 'main game di rumah', '2016-12-01', 0),
(1, 2, 'bunyamin b', '121209091', 'akbarb', '121209012', 'guru b', 'gurub', 'malas malasan di rumahb', '2016-12-09', 0),
(2, 4, 'bunyamin', '12120909', 'akbar', '12120901', 'guru', 'guru', 'main game di rumah', '2016-12-01', 0),
(1, 2, 'bunyamin b', '121209091', 'akbarb', '121209012', 'guru b', 'gurub', 'malas malasan di rumahb', '2016-12-09', 0),
(2, 4, 'bunyamin', '12120909', 'akbar', '12120901', 'guru', 'guru', 'main game di rumah', '2016-12-01', 0),
(1, 2, 'bunyamin b', '121209091', 'akbarb', '121209012', 'guru b', 'gurub', 'malas malasan di rumahb', '2016-12-09', 0),
(2, 4, 'bunyamin', '12120909', 'akbar', '12120901', 'guru', 'guru', 'main game di rumah', '2016-12-01', 0),
(1, 2, 'bunyamin b', '121209091', 'akbarb', '121209012', 'guru b', 'gurub', 'malas malasan di rumahb', '2016-12-09', 0),
(2, 4, 'bunyamin', '12120909', 'akbar', '12120901', 'guru', 'guru', 'main game di rumah', '2016-12-01', 0),
(1, 2, 'bunyamin b', '121209091', 'akbarb', '121209012', 'guru b', 'gurub', 'malas malasan di rumahb', '2016-12-09', 0),
(2, 4, 'bunyamin', '12120909', 'akbar', '12120901', 'guru', 'guru', 'main game di rumah', '2016-12-01', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bk_agenda`
--
ALTER TABLE `bk_agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `bk_anekdot`
--
ALTER TABLE `bk_anekdot`
  ADD PRIMARY KEY (`id_anekdot`);

--
-- Indexes for table `bk_data_konsultasi`
--
ALTER TABLE `bk_data_konsultasi`
  ADD PRIMARY KEY (`id_data_konsultasi`);

--
-- Indexes for table `bk_guru`
--
ALTER TABLE `bk_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `bk_hasil_konferensi`
--
ALTER TABLE `bk_hasil_konferensi`
  ADD PRIMARY KEY (`id_hasil_konferensi`);

--
-- Indexes for table `bk_home_visit`
--
ALTER TABLE `bk_home_visit`
  ADD PRIMARY KEY (`id_home_visit`);

--
-- Indexes for table `bk_kartu_status_konseling`
--
ALTER TABLE `bk_kartu_status_konseling`
  ADD PRIMARY KEY (`id_kartu_konseling`),
  ADD KEY `nis` (`nis`);

--
-- Indexes for table `bk_konseling_individu`
--
ALTER TABLE `bk_konseling_individu`
  ADD PRIMARY KEY (`id_konseling_individu`);

--
-- Indexes for table `bk_orangtua`
--
ALTER TABLE `bk_orangtua`
  ADD PRIMARY KEY (`id_orangtua`),
  ADD UNIQUE KEY `nik` (`nis`);

--
-- Indexes for table `bk_rujukan_alih_tangan_kasus`
--
ALTER TABLE `bk_rujukan_alih_tangan_kasus`
  ADD PRIMARY KEY (`id_rujukan_alih_tangan_kasus`);

--
-- Indexes for table `bk_satkung_alih_tangan_kasus`
--
ALTER TABLE `bk_satkung_alih_tangan_kasus`
  ADD PRIMARY KEY (`id_satkung_alih_tangan_kasus`);

--
-- Indexes for table `bk_satkung_home_visit`
--
ALTER TABLE `bk_satkung_home_visit`
  ADD PRIMARY KEY (`id_satkung_home_visit`);

--
-- Indexes for table `bk_student`
--
ALTER TABLE `bk_student`
  ADD PRIMARY KEY (`id_student`),
  ADD UNIQUE KEY `nis` (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bk_guru`
--
ALTER TABLE `bk_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bk_kartu_status_konseling`
--
ALTER TABLE `bk_kartu_status_konseling`
  MODIFY `id_kartu_konseling` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bk_student`
--
ALTER TABLE `bk_student`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
