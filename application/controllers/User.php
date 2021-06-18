<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library("session");
        $this->load->model('DataAnak');
        $this->load->model('DataIbu');
        $this->load->model('DataPosyandu');
        $this->load->model('DataImunisasi');
        $this->load->model('DataKMS');
        $this->load->model('DataAkun');
    }

    public function index()
    {
        // $getKode = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        // $spesifik_kode = $getKode['kode_posyandu'];
        $data['user']   = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $data['get_posyandu'] = $this->DataPosyandu->printPosyandu();

        $this->load->view('User/template/header', $data);
        $this->load->view('User/index');
        $this->load->view('User/template/footer');
    }

    public function profil()
    {

        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $data['getUser'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        // $spesifik_kode = $getKode['kode_posyandu'];

        $this->load->view('User/template/header', $data);
        $this->load->view('User/profil', $data);
        $this->load->view('User/template/footer');
    }

    public function pengetahuan_seputar_anak()
    {
        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $this->load->view('User/template/header', $data);
        $this->load->view('User/pengetahuan_seputar_anak');
        $this->load->view('User/template/footer');
    }
    public function perkembangan_anak_balita()
    {
        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $this->load->view('User/template/header', $data);
        $this->load->view('User/perkembangan_anak_balita');
        $this->load->view('User/template/footer');
    }
    public function pendidikan_stimulasi()
    {
        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $this->load->view('User/template/header', $data);
        $this->load->view('User/pendidikan_stimulasi');
        $this->load->view('User/template/footer');
    }
    public function perawatan_seharihari()
    {
        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $this->load->view('User/template/header', $data);
        $this->load->view('User/perawatan_sehari_hari');
        $this->load->view('User/template/footer');
    }

    public function mpasi()
    {
        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $this->load->view('User/template/header', $data);
        $this->load->view('User/MP_ASI');
        $this->load->view('User/template/footer');
    }

    public function artikelPosyandu()
    {
        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $data['artikel'] = $this->db->get('artikel')->result_array();
        $this->load->view('User/template/header', $data);
        $this->load->view('User/artikelView');
        $this->load->view('User/template/footer');
    }

    public function artikelDetail($id_artikel)
    {
        $data['artikel'] = $this->db->get_where('artikel', ['id_artikel' => $id_artikel])->row_array();
        $view = $data['artikel']['view'] + 1;
        $this->db->set('view', $view);
        $this->db->where('id_artikel', $id_artikel);
        $this->db->update('artikel');
        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $data['artikel_artikel'] = $this->db->get('artikel')->result_array();
        $this->load->view('User/template/header', $data);
        $this->load->view('User/artikelDetail');
        $this->load->view('User/template/footer');
    }
    public function pengetahuan()
    {
        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $data['pengetahuan'] = $this->db->get('pengetahuan')->result_array();
        $data['kategori'] = $this->db->get('pengetahuan_kategori')->result_array();
        $this->load->view('User/template/header', $data);
        $this->load->view('User/pengetahuanView');
        $this->load->view('User/template/footer');
    }
    public function pengetahuanId($id_kategori)
    {
        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $data['pengetahuan'] = $this->db->get_where('pengetahuan', ['id_kategori' => $id_kategori])->result_array();
        $data['kategori'] = $this->db->get('pengetahuan_kategori')->result_array();
        $this->load->view('User/template/header', $data);
        $this->load->view('User/pengetahuanVieww');
        $this->load->view('User/template/footer');
    }

    public function pengetahuanDetail($id_pengetahuan)
    {
        $data['pengetahuan'] = $this->db->get_where('pengetahuan', ['id_pengetahuan' => $id_pengetahuan])->row_array();
        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $data['pengetahuan_pengetahuan'] = $this->db->get('pengetahuan')->result_array();
        $this->load->view('User/template/header', $data);
        $this->load->view('User/pengetahuanDetail');
        $this->load->view('User/template/footer');
    }
    public function kegiatanPosyandu()
    {
        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $data['kegiatan'] = $this->db->get_where('datakegiatan', ['kode_posyandu' => $data['user']['kode_posyandu']])->result_array();
        $this->load->view('User/template/header', $data);
        $this->load->view('User/kegiatanView');
        $this->load->view('User/template/footer');
    }

    public function kegiatanDetail($id_kegiatan)
    {
        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $data['kegiatan'] = $this->db->get_where('datakegiatan', ['kode_posyandu' => $data['user']['kode_posyandu'], 'id_kegiatan' => $id_kegiatan])->row_array();
        $data['kegiatan_kegiatan'] = $this->db->get_where('datakegiatan', ['kode_posyandu' => $data['user']['kode_posyandu']])->result_array();
        $this->load->view('User/template/header', $data);
        $this->load->view('User/kegiatanDetail');
        $this->load->view('User/template/footer');
    }
    public function jadwalPosyandu()
    {
        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $data['jadwal'] = $this->db->get_where('jadwal_posyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->result_array();
        $this->load->view('User/template/header', $data);
        $this->load->view('User/jadwalView');
        $this->load->view('User/template/footer');
    }

    public function imunisasiUser()
    {

        $getKode = $this->db->get_where('dataanak', ['nik' => $this->session->userdata('nik')])->row_array();
        $spesifikNik = $getKode['nik'];
        $spesifikIdkms = $getKode['id_kms'];

        $x = $this->DataKMS->get_dataUser($spesifikIdkms)->result();
        $data['avgKMS'] = json_encode($x);

        $data['getImunisasiUser'] = $this->DataImunisasi->getImunisasiUser($spesifikNik);
        $data['getKmsUser'] = $this->DataImunisasi->getKmsUser($spesifikIdkms);
        $data['user'] = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();

        $data['posyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $this->load->view('User/template/header', $data);
        $this->load->view('User/imunisasiUser', $data);
        $this->load->view('User/template/footer');
    }

    public function cetak()
    {
        $this->load->library('dompdf_gen');

        $getKode = $this->db->get_where('dataanak', ['nik' => $this->session->userdata('nik')])->row_array();
        $spesifikNik = $getKode['nik'];
        $spesifikIdkms = $getKode['id_kms'];

        $x = $this->DataKMS->get_dataUser($spesifikIdkms)->result();
        $data['avgKMS'] = json_encode($x);
        $data['getImunisasiUser'] = $this->DataImunisasi->getImunisasiUser($spesifikNik);
        $data['getKmsUser'] = $this->DataImunisasi->getKmsUser($spesifikIdkms);
        $data['judul']   = 'Laporan';
        $data['gambar']        = FCPATH . 'assets/img/logo22.png';
        $data['user']    = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['dataposyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();

        $this->load->view('user/cetak', $data);

        $paper_size         = 'A4';
        $orientation        = 'landscape';
        $html               = $this->output->get_output();
        $this->dompdf->set_paper($paper_size, $orientation);

        $this->dompdf->load_html($html);
        $this->dompdf->render();
        ob_end_clean();
        $this->dompdf->stream("laporan.pdf", array('Attachment' => 0));
        $this->session->set_flashdata('petugas', 'Success as a petugas.');
    }

    public function cetak_jadwal()
    {
        $this->load->library('dompdf_gen');

        $data['judul']   = 'Laporan';
        $data['gambar']        = FCPATH . 'assets/img/logo22.png';
        $data['user']    = $this->db->get_where('dataAnak', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['dataposyandu'] = $this->db->get_where('dataposyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->row_array();
        $data['jadwal_posyandu'] = $this->db->get_where('jadwal_posyandu', ['kode_posyandu' => $data['user']['kode_posyandu']])->result_array();

        $this->load->view('user/cetak_jadwal', $data);

        $paper_size         = 'A4';
        $orientation        = 'potrait';
        $html               = $this->output->get_output();
        $this->dompdf->set_paper($paper_size, $orientation);

        $this->dompdf->load_html($html);
        $this->dompdf->render();
        ob_end_clean();
        $this->dompdf->stream("laporan.pdf", array('Attachment' => 0));
        $this->session->set_flashdata('petugas', 'Success as a petugas.');
    }
}
