-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Des 2020 pada 14.02
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mtsnu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `nm_pengomentar` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `nm_pengomentar`, `email`, `pesan`) VALUES
(1, 'niedia', '', 'bagus'),
(2, 'niedia', '', 'bagus'),
(3, 'niedia candra nirwana', 'niediacandranirwana@gmail.com', 'tingkatkan lagi'),
(4, 'niedia candra nirwana', 'niediacandranirwana@gmail.com', 'terimakasih'),
(5, 'dhea reynalda', 'dheareynalda@gmail.com', 'semangat terus untuk MTS'),
(6, 'yyy', 'gikkkak@gmail.com', 'fdtrlfelgjkhgl'),
(7, 'nnn', 'gikkkak@gmail.com', 'hhjkh.'),
(8, 'dff', 'fdf', 'fdgdg'),
(9, 'niedia candra nirwana', 'jumadi@gmail.com', 'hhjkk'),
(10, 'niedia', 'jumadi@gmail.com', 'jjjjjjjjjjjjjjjj'),
(11, 'niedia candra nirwana', 'niediacandranirwana@gmail.com', 'kjjoj'),
(12, 'niedia candra nirwana', 'niediaskkllls@gmail.com', 'baik'),
(13, 'niedia candra nirwana', 'niediacandranirwana@gmail.com', 'semnagat'),
(14, 'niedia candra nirwana', 'niediacandranirwana@gmail.com', 'Semangat'),
(15, 'gg', 'gggg@gmail.com', 'hjhjhjhj');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_log` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_log`, `username`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_alumni`
--

CREATE TABLE `tb_alumni` (
  `id_alumni` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` char(20) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `tahun_lulus` year(4) NOT NULL,
  `email` varchar(250) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `sekolah_lanjutan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_alumni`
--

INSERT INTO `tb_alumni` (`id_alumni`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `tahun_lulus`, `email`, `no_telp`, `sekolah_lanjutan`) VALUES
(11, 'tiga', 'Perempuan', 'ddld', '2020-08-04', 'jkjj', 1980, 'jumadi@gmail.com', '986867857', 'jhjhgfgf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_daftar`
--

CREATE TABLE `tb_daftar` (
  `kd_siswabaru` int(15) NOT NULL,
  `nm_siswa` varchar(50) NOT NULL,
  `tmpLahir` varchar(100) NOT NULL,
  `tglLahir` date NOT NULL,
  `jk` char(15) NOT NULL,
  `no_tlp` varchar(25) NOT NULL,
  `anak_ke` char(5) NOT NULL,
  `jmlh_sdr` char(5) NOT NULL,
  `almt` varchar(250) NOT NULL,
  `no_kk` varchar(50) NOT NULL,
  `NIK` varchar(15) NOT NULL,
  `NIS_siswa` varchar(15) NOT NULL,
  `NISN` varchar(15) NOT NULL,
  `asal_sekolah` varchar(150) NOT NULL,
  `almt_sekolah` varchar(150) NOT NULL,
  `nm_ayah` varchar(100) NOT NULL,
  `umur_ayah` varchar(5) NOT NULL,
  `almt_ayah` varchar(250) NOT NULL,
  `no_telp_ayah` char(15) NOT NULL,
  `pendidikan_ayah` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `nm_ibu` varchar(100) NOT NULL,
  `umur_ibu` varchar(5) NOT NULL,
  `almt_ibu` varchar(250) NOT NULL,
  `no_telp_ibu` char(15) NOT NULL,
  `pendidikan_ibu` varchar(100) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `foto_siswa` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_daftar`
--

INSERT INTO `tb_daftar` (`kd_siswabaru`, `nm_siswa`, `tmpLahir`, `tglLahir`, `jk`, `no_tlp`, `anak_ke`, `jmlh_sdr`, `almt`, `no_kk`, `NIK`, `NIS_siswa`, `NISN`, `asal_sekolah`, `almt_sekolah`, `nm_ayah`, `umur_ayah`, `almt_ayah`, `no_telp_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `nm_ibu`, `umur_ibu`, `almt_ibu`, `no_telp_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `foto_siswa`) VALUES
(8, 'dea', 'sampit', '2020-07-06', 'Perempuan', '0837338238', '1', '1', 'jjalsalkhdald', '03093782', '32738237', '97287382', '387287382', 'dnkdkdk', 'kdkwjdlwjdlwdj', 'hewkwj', '12', 'dhkwdkjwhw', '8028929', 'hkhhj', 'hkhhj', 'khhj', '33', 'kjkjk', '987878789', 'jkjjhjhh', 'jjhjhh', 'b dijah.jpg'),
(9, 'dea', 'sampit', '2020-07-06', 'Perempuan', '0837338238', '1', '1', 'jjalsalkhdald', '03093782', '32738237', '97287382', '387287382', 'dnkdkdk', 'kdkwjdlwjdlwdj', 'hewkwj', '12', 'dhkwdkjwhw', '8028929', 'hkhhj', 'hkhhj', 'khhj', '33', 'kjkjk', '987878789', 'jkjjhjhh', 'jjhjhh', 'b dijah.jpg'),
(10, 'jkjk', 'jkjk', '2020-07-14', 'Perempuan', '333333', '2', '2', 'gffhfhhhhhh', '33443', '34443', '6566', '565656', 'yytyghghng', 'jgjjgjgjjj', 'gjgjgjg', '12', 'hgjjgjj', '333333', 'gjgjjgjjggj', 'gjgjjgjjggj', 'gjjjgjgjgj', '44', 'ggjgjgjgjj', '4444', 'ggjgjggj', 'jggjggj', 'ksong.png'),
(11, 'dua', 'jkjk', '2020-07-14', 'Perempuan', '333333', '2', '2', 'gffhfhhhhhh', '33443', '34443', '6566', '565656', 'yytyghghng', 'jgjjgjgjjj', 'gjgjgjg', '12', 'hgjjgjj', '333333', 'gjgjjgjjggj', 'gjgjjgjjggj', 'gjjjgjgjgj', '44', 'ggjgjgjgjj', '4444', 'ggjgjggj', 'jggjggj', 'ksong.png'),
(12, 'satu', 'nxsnsk', '2020-07-29', 'Perempuan', '0897871', '1', '1', 'm,mkjk', '97878', '88787', '87878', '8787878', 'hjjhjkbhjb', 'jghgh', 'hjgj', '88', 'hghgh', '898989', 'hhhhh', 'hhhhh', 'jhjhh', '08', 'bhjhgh', 'hhjh', 'hjhkh', 'jkjk', 'p tohir.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ekstrakulikuler`
--

CREATE TABLE `tb_ekstrakulikuler` (
  `id_eks` int(5) NOT NULL,
  `nm_siswa` varchar(100) NOT NULL,
  `jk` char(10) NOT NULL,
  `kelas` char(5) NOT NULL,
  `ekstrakulikuler` char(100) NOT NULL,
  `almt` varchar(250) NOT NULL,
  `no_telp` char(15) NOT NULL,
  `no_telp_ortu` char(15) NOT NULL,
  `alasan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_ekstrakulikuler`
--

INSERT INTO `tb_ekstrakulikuler` (`id_eks`, `nm_siswa`, `jk`, `kelas`, `ekstrakulikuler`, `almt`, `no_telp`, `no_telp_ortu`, `alasan`) VALUES
(4, 'jksjdks', 'Perempuan', 'VII', '1980', 'jhjhk', '7897978', '7878978', 'bhbhghg'),
(5, 'empat', 'Perempuan', 'VII', 'PRAMUKA', ' jhjhk                    ', '7897978', '7878978', 'bhbhghg\">'),
(6, 'delapan', 'Perempuan', 'VII', 'PRAMUKA', '    jhjhk                                                                                ', '7897978', '7878978', 'bhbhghg\">\">\">\">');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nm_guru` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `mapel` varchar(100) NOT NULL,
  `tmt` varchar(100) NOT NULL,
  `foto_guru` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nm_guru`, `tempat_lahir`, `tanggal_lahir`, `pendidikan`, `jurusan`, `mapel`, `tmt`, `foto_guru`) VALUES
(6, 'Umiyati, S.Pd', 'Sleman', '1970-07-01', 's1', 'Pendidikan Bahasa Indonesia', 'Bahasa Indonesia', '01-01-2005', 'bu umi.jpg'),
(7, 'Siti Hadijah, SE', 'Sampit', '1973-12-09', 'S1', 'Ekonomi', 'IPS', '06-07-2005', '879-b dijah.jpg'),
(8, 'M. Alamsyah', 'Sampit', '1980-08-25', 'S1', 'Pendidikan Ekonomi', 'Prakarya', '05-01-2005', 'p alam.jpg'),
(9, 'Mat Tohir, A.md', 'Sampit', '1986-06-11', 'D3', 'PGSD', 'PJOK', '01-07-2005', 'p tohir.jpg'),
(10, 'Mariana, A.md', 'Sampit', '1984-02-05', 'D3', 'PGSD', 'PKN', '06-07-2005', 'b mariana.jpg'),
(11, 'Siti Marhamah, S.Pd', 'Purworejo', '1993-01-07', 'S1', 'Pendidikan IPA', 'IPA', '01-07-2015', 'ksong.png'),
(12, 'Dhea Reynalda', 'Sampit', '1998-12-12', 'SMK/Sederajat', '-', 'Prakarya', '-', 'b dhea.jpg'),
(13, 'Niedia candra nirwana', 'Palangka Raya', '1999-07-18', 'SMK/Sederajat', '-', 'Matematika', '-', 'aned.jpg'),
(14, 'M.Nasrullah, S.Ag', 'Sampit', '1993-07-23', 'S1', 'Tafsir Hadist', 'Bahasa Arab', '01-07-2015', 'p anas.jpg'),
(15, 'Fajar Al Akbar', 'Sampit', '1997-07-07', 'SMA', '-', 'Prakarya', '-', 'ksong.png'),
(16, 'Siti Asiah, S.Pd', 'Lupak Dalam', '1973-03-23', 'S1', 'Pendidikan Agama Islam', 'Al Quran Hadist', '06-07-2005', 'bu siti a.jpg'),
(17, 'Noor Maulia, S.PdI', 'Sampit', '1982-12-18', 'S1', 'Pendidikan Agama Islam', 'Fikih', '01-01-2005', 'b lia.jpg'),
(18, 'Kurtianingsih, S.PdI', 'Sampit', '1968-08-24', 'S1', 'Pendidikan Agama Islam', 'Sejarah Kebudayaan Islam', '01-01-2005', 'bu ningsih.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`id_jadwal`, `image`, `name`) VALUES
(8, '5f1c15efe9e54e2d09ffddcd3c55d694.png', 'Jadwal Terbaru 2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_luluseleksi`
--

CREATE TABLE `tb_luluseleksi` (
  `id_lulus` int(11) NOT NULL,
  `kd_siswabaru` int(5) NOT NULL,
  `tgl_lulus` date NOT NULL,
  `status` char(5) NOT NULL,
  `ket` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `tb_alumni`
--
ALTER TABLE `tb_alumni`
  ADD PRIMARY KEY (`id_alumni`);

--
-- Indeks untuk tabel `tb_daftar`
--
ALTER TABLE `tb_daftar`
  ADD PRIMARY KEY (`kd_siswabaru`);

--
-- Indeks untuk tabel `tb_ekstrakulikuler`
--
ALTER TABLE `tb_ekstrakulikuler`
  ADD PRIMARY KEY (`id_eks`);

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `tb_luluseleksi`
--
ALTER TABLE `tb_luluseleksi`
  ADD PRIMARY KEY (`id_lulus`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_alumni`
--
ALTER TABLE `tb_alumni`
  MODIFY `id_alumni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_daftar`
--
ALTER TABLE `tb_daftar`
  MODIFY `kd_siswabaru` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_ekstrakulikuler`
--
ALTER TABLE `tb_ekstrakulikuler`
  MODIFY `id_eks` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_luluseleksi`
--
ALTER TABLE `tb_luluseleksi`
  MODIFY `id_lulus` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
