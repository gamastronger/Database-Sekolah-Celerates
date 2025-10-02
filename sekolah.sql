-- sql membuat tabel
CREATE TABLE nilai (
    id SERIAL PRIMARY KEY,
    siswa_id INT,
    mata_pelajaran VARCHAR(100),
    nilai INT,
    CONSTRAINT fk_siswa
        FOREIGN KEY(siswa_id)
        REFERENCES siswa(id)
);

-- sql membuat data siswa dan nilai
INSERT INTO siswa (nama, umur, jurusan) VALUES
('Andi', 16, 'IPA'),
('Budi', 17, 'IPS'),
('Citra', 16, 'IPA'),
('Dewi', 17, 'Bahasa'),
('Eka', 16, 'IPS');

INSERT INTO nilai (siswa_id, mata_pelajaran, nilai) VALUES
(1, 'Matematika', 85),
(1, 'Fisika', 90),
(2, 'Ekonomi', 88),
(2, 'Sejarah', 82),
(3, 'Biologi', 92),
(3, 'Kimia', 85),
(4, 'Bahasa Inggris', 95),
(4, 'Sastra Indonesia', 88),
(5, 'Sosiologi', 80),
(5, 'Geografi', 84);

-- sql query data
SELECT siswa.nama, AVG(nilai.nilai) AS rata_nilai
FROM siswa
JOIN nilai ON siswa.id = nilai.siswa_id
GROUP BY siswa.nama;

-- sql update data
UPDATE siswa
SET jurusan = 'IPA'
WHERE nama = 'Budi';

-- sql delete data nilai
DELETE FROM nilai
WHERE siswa_id = 3 AND mata_pelajaran = 'Kimia';

