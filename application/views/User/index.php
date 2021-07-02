<script type="text/javascript" src="<?= base_url() ?>assets/chart/fusioncharts.js"></script>
<script type="text/javascript" src="<?= base_url() ?>assets/chart/themes/fusioncharts.theme.zune.js"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyDA3RmcrgATNdt8B1IcSo454nBQPeP3K0A"></script>

<script type="text/javascript">
  (function() {
    window.onload = function() {
      var map;
      //Parameter Google maps
      var options = {
        zoom: 12, //level zoom
        //posisi tengah peta
        center: new google.maps.LatLng(-6.1616397, 106.7384473),
        mapTypeId: google.maps.MapTypeId.ROADMAP
      };

      // Buat peta di 
      var map = new google.maps.Map(document.getElementById('peta'), options);
      // Tambahkan Marker 
      var locations = [
        <?php $no = 0;
        foreach ($get_posyandu as $row) : $no++; ?>[
            "<img src='<?= base_url() ?>assets/img/logomap.png' width='100' height='100'><br/><?= $row["nama_posyandu"] . "-" ?> <?php echo $row["alamat"]; ?>", <?= $row["lat"] ?>, <?= $row["lng"] ?>
          ],
        <?php endforeach; ?>


      ];
      var infowindow = new google.maps.InfoWindow();
      // ini di bawah ganti peta jadi trafic lalu lintas bisa terlihat
      // var trafficLayer = new google.maps.TrafficLayer();
      // trafficLayer.setMap(map);

      var marker, i;
      /* kode untuk menampilkan banyak marker */
      for (i = 0; i < locations.length; i++) {
        marker = new google.maps.Marker({
          position: new google.maps.LatLng(locations[i][1], locations[i][2]),
          map: map,
          icon: "<?= base_url() ?>assets/img/logomap.png"
        });
        /* menambahkan event clik untuk menampikan
            infowindows dengan isi sesuai denga
           marker yang di klik */

        google.maps.event.addListener(marker, 'click', (function(marker, i) {
          return function() {
            infowindow.setContent(locations[i][0]);
            infowindow.open(map, marker);
          }
        })(marker, i));
      }


    };
  })();
</script>

<div class="owl-carousel owl-single px-0">
  <div class="site-blocks-cover overlay" style="background-image: url('assets/img/beb1.png');">
  </div>
</div>



<div class="site-section py-5">
  <div class="container">
    <!-- <div class="row">
      <div class="col-lg-4">
        <div class="title-section mb-3">
          <h4>Artikel <strong class="text-primary">Artikel</strong></h4>
        </div>
        <div class="card shadow" style="width: 100%">
          <img src="<?= base_url() ?>assets/img/book1.jpg" class="card-img-top" alt="...">
          <div class="card-body text-center"><a href="<?= base_url('user/artikelPosyandu') ?>" class="btn btn-primary">Selengkapnya</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="title-section mb-3">
          <h4>Pengetahuan <strong class="text-primary">Seputar Anak</strong></h4>
        </div>
        <div class="card shadow" style="width: 100%">
          <img src="<?= base_url() ?>assets/img/book2.jpg" class="card-img-top" alt="...">
          <div class="card-body text-center"><a href="<?= base_url('user/pengetahuan') ?>" class="btn btn-primary">Selengkapnya</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="title-section mb-3">
          <h4>Riwayat <strong class="text-primary">Perkembangan Anak</strong></h4>
        </div>
        <div class="card shadow" style="width: 100%">
          <img src="<?= base_url() ?>assets/img/chart.jpg" class="card-img-top" alt="...">
          <div class="card-body text-center"><a href="<?= base_url() ?>user/imunisasiUser" class="btn btn-primary">Selengkapnya</a>
          </div>
        </div>
      </div>
    </div> -->
    <div class="row mt-5 justify-content-center">
      <div class="col-lg-4">
        <div class="title-section mb-3 text-center">
          <h4>Riwayat <strong class="text-primary">Imunisasi</strong></h4>
        </div>
        <div class="card shadow" style="width: 100%">
          <img src="<?= base_url() ?>assets/img/imun.jpeg" class="card-img-top" alt="..." height="200">
          <div class="card-body text-center"><a href="<?= base_url('user/riwayatImunisasi') ?>" class="btn btn-primary">Selengkapnya</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="title-section mb-3 text-center">
          <h4>Riwayat <strong class="text-primary">Perkembangan Anak</strong></h4>
        </div>
        <div class="card shadow" style="width: 100%">
          <img src="<?= base_url() ?>assets/img/perkembangan.jpg" class="card-img-top" alt="..." height="200">
          <div class="card-body text-center"><a href="<?= base_url('user/riwayatPerkembangan') ?>" class="btn btn-primary">Selengkapnya</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="title-section mb-3 text-center">
          <h4>Grafik <strong class="text-primary">Perkembangan Anak</strong></h4>
        </div>
        <div class="card shadow" style="width: 100%">
          <img src="<?= base_url() ?>assets/img/grafik2.jpg" class="card-img-top" alt="..." height="200">
          <div class="card-body text-center"><a href="<?= base_url() ?>user/grafikPerkembangan" class="btn btn-primary">Selengkapnya</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="site-section section2">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div id="peta"></div>
      </div>
    </div>
  </div>
</div>