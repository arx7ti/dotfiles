# This file is machine generated.  Do not edit it!
{ fetchurl }:
let
  qlReleases =
    {
      "OdonataResearchLLC-lisp-unit" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/ultralisp/archive/O/OdonataResearchLLC-lisp-unit-20190319090952.tgz";
          sha256 = "034a0q9b9jcf7fxf14x7y92lw2h6m1adi2l8rb55a8sh8dj85wzl";
        };
        name = "OdonataResearchLLC-lisp-unit";
        archiveName = "OdonataResearchLLC-lisp-unit-20190319090952.tgz";
        archiveSize = 18826;
        archiveMD5 = "bb993b862ac61e95f44410b54a1549d5";
        archiveContentSHA1 = "b8ac287f73929c09c2ef6f1c83151d1e3ff9bf9f";
        prefix = "OdonataResearchLLC-lisp-unit-20190319090952";
        systemFiles = [
          "lisp-unit.asd"
        ];
      };
      "alexandria" = {
        archive = fetchurl {
          url = "http://beta.quicklisp.org/archive/alexandria/2020-09-25/alexandria-20200925-git.tgz";
          sha256 = "1cpvnzfs807ah07hrk8kplim6ryzqs4r35ym03cpky5xdl8c89fl";
        };
        name = "alexandria";
        archiveName = "alexandria-20200925-git.tgz";
        archiveSize = 54730;
        archiveMD5 = "59c8237a854de6f4f93328cd5747cd14";
        archiveContentSHA1 = "c531b4f1469d257643362b700745b3a54c132bef";
        prefix = "alexandria-20200925-git";
        systemFiles = [
          "alexandria.asd"
        ];
      };
      "antik" = {
        archive = fetchurl {
          url = "http://beta.quicklisp.org/archive/antik/2019-10-08/antik-master-df14cb8c-git.tgz";
          sha256 = "15qkrxh172mlgf695grviy6l98zcnns8hv93r3cc8ycd8q6qds02";
        };
        name = "antik";
        archiveName = "antik-master-df14cb8c-git.tgz";
        archiveSize = 1655490;
        archiveMD5 = "1bfdd37b226dd77d2a83a8262c7f5c75";
        archiveContentSHA1 = "027e6a3fca896a523a6cd49cb6ae501605c6d953";
        prefix = "antik-master-df14cb8c-git";
        systemFiles = [
          "antik-base.asd"
          "antik.asd"
          "foreign-array.asd"
          "physical-dimension.asd"
        ];
      };
      "cffi" = {
        archive = fetchurl {
          url = "http://beta.quicklisp.org/archive/cffi/2020-07-15/cffi_0.23.0.tgz";
          sha256 = "1szpbg5m5fjq7bpkblflpnwmgz3ncsvp1y43g3jzwlk7yfxrwxck";
        };
        name = "cffi";
        archiveName = "cffi_0.23.0.tgz";
        archiveSize = 261680;
        archiveMD5 = "a43e3c440fc4f20494e6d2347887c963";
        archiveContentSHA1 = "ec2f6960ffea76d4d18d7de537125918b132f831";
        prefix = "cffi_0.23.0";
        systemFiles = [
          "cffi-grovel.asd"
          "cffi-libffi.asd"
          "cffi-toolchain.asd"
          "cffi.asd"
        ];
      };
      "cl-ana" = {
        archive = fetchurl {
          url = "http://beta.quicklisp.org/archive/cl-ana/2021-02-28/cl-ana-20210228-git.tgz";
          sha256 = "04m2iia368zr8czhr3vivvqxw9wxa6s98q3lz6hpkwqnrkn8nc21";
        };
        name = "cl-ana";
        archiveName = "cl-ana-20210228-git.tgz";
        archiveSize = 594096;
        archiveMD5 = "1b526dcfd24f8f9bc93864b88c9fd2cc";
        archiveContentSHA1 = "4e69ea7e8287ca622a648a17bb8292fd201ad28f";
        prefix = "cl-ana-20210228-git";
        systemFiles = [
          "cl-ana.asd"
        ];
      };
      "cl-babel-babel" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/ultralisp/archive/c/cl-babel-babel-20200724020240.tgz";
          sha256 = "1jzx2yl9v964lfw67nnjzcjzi8zk3xdrs8w1njk39g0rqaymradl";
        };
        name = "cl-babel-babel";
        archiveName = "cl-babel-babel-20200724020240.tgz";
        archiveSize = 276455;
        archiveMD5 = "731b1bbc47eea6c65459a9d239fe1a20";
        archiveContentSHA1 = "4303651fd0205c849efa6a84ddb80e01bf1c1000";
        prefix = "cl-babel-babel-20200724020240";
        systemFiles = [
          "babel.asd"
        ];
      };
      "cl-csv" = {
        archive = fetchurl {
          url = "http://beta.quicklisp.org/archive/cl-csv/2020-10-16/cl-csv-20201016-git.tgz";
          sha256 = "1w12ads26v5sgcmy6rjm6ys9lml7l6rz86w776s2an2maci9kzmf";
        };
        name = "cl-csv";
        archiveName = "cl-csv-20201016-git.tgz";
        archiveSize = 25202;
        archiveMD5 = "3e067784236ab620857fe738dafedb4b";
        archiveContentSHA1 = "50b9ecb493ce094c7eba3b9bcb6998774b06c3d6";
        prefix = "cl-csv-20201016-git";
        systemFiles = [
          "cl-csv.asd"
        ];
      };
      "edicl-cl-fad" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/archive/1245/edicl-cl-fad-20210111230139.tgz";
          sha256 = "0r7gljs013c2y8hxsd2pp199ji9a72vk48wvndqbavad938iq1nr";
        };
        name = "edicl-cl-fad";
        archiveName = "edicl-cl-fad-20210111230139.tgz";
        archiveSize = 25629;
        archiveMD5 = "51b1292d5e325ce98fa468185e81f7aa";
        archiveContentSHA1 = "460a1020ace9b29aa5d75f78927fd31166b284dd";
        prefix = "edicl-cl-fad-20210111230139";
        systemFiles = [
          "cl-fad.asd"
        ];
      };
      "edicl-cl-interpol" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/ultralisp/archive/e/edicl-cl-interpol-20201111190514.tgz";
          sha256 = "1jrsrx1hzg32dy128zyjiry1dggcz3rwxdqmsbzk6b7nlcn1i63q";
        };
        name = "edicl-cl-interpol";
        archiveName = "edicl-cl-interpol-20201111190514.tgz";
        archiveSize = 45463;
        archiveMD5 = "b682a2d50c37c7ab1e680ca9912d2017";
        archiveContentSHA1 = "f95006116b3e950ca3924dcc58f53e0975aca106";
        prefix = "edicl-cl-interpol-20201111190514";
        systemFiles = [
          "cl-interpol.asd"
        ];
      };
      "edicl-cl-ppcre" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/ultralisp/archive/e/edicl-cl-ppcre-20190618135807.tgz";
          sha256 = "05m71aind11pziwqr7d2phaq18659kkj0s9fjqz5km5p300gbpdb";
        };
        name = "edicl-cl-ppcre";
        archiveName = "edicl-cl-ppcre-20190618135807.tgz";
        archiveSize = 158607;
        archiveMD5 = "f50006e93cad2b90b4365bb42679e419";
        archiveContentSHA1 = "07bd63313e40b4c10500119dd0a8c75d05d4dde9";
        prefix = "edicl-cl-ppcre-20190618135807";
        systemFiles = [
          "cl-ppcre.asd"
        ];
      };
      "edicl-cl-unicode" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/archive/1241/edicl-cl-unicode-20210222215228.tgz";
          sha256 = "0l877ayvqavr5h8rdj78c6ynqqsrbws0k59j7jgal76mz27npgwb";
        };
        name = "edicl-cl-unicode";
        archiveName = "edicl-cl-unicode-20210222215228.tgz";
        archiveSize = 1327738;
        archiveMD5 = "6a8a3b032f7cc073d922ea8e4d6b09e2";
        archiveContentSHA1 = "76edc88886a76bc02fd772df9b1dce9ab4cff840";
        prefix = "edicl-cl-unicode-20210222215228";
        systemFiles = [
          "cl-unicode.asd"
        ];
      };
      "edicl-flexi-streams" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/ultralisp/archive/e/edicl-flexi-streams-20200919144147.tgz";
          sha256 = "17ksh6r05g3s20nkwlf93wy7zwy11j29dihq6mkgwhrwg0f0017f";
        };
        name = "edicl-flexi-streams";
        archiveName = "edicl-flexi-streams-20200919144147.tgz";
        archiveSize = 448250;
        archiveMD5 = "32163251073fed894b7ca128847e995b";
        archiveContentSHA1 = "9e354b25b03ad05ec19322b432e8a1c218e58064";
        prefix = "edicl-flexi-streams-20200919144147";
        systemFiles = [
          "flexi-streams.asd"
        ];
      };
      "fare-utils" = {
        archive = fetchurl {
          url = "http://beta.quicklisp.org/archive/fare-utils/2017-01-24/fare-utils-20170124-git.tgz";
          sha256 = "0jhb018ccn3spkgjywgd0524m5qacn8x15fdiban4zz3amj9dapq";
        };
        name = "fare-utils";
        archiveName = "fare-utils-20170124-git.tgz";
        archiveSize = 32604;
        archiveMD5 = "6752362d0c7c03df6576ab2dbe807ee2";
        archiveContentSHA1 = "e0b139600b7693a13eece65ff148464168ae890b";
        prefix = "fare-utils-20170124-git";
        systemFiles = [
          "fare-utils.asd"
        ];
      };
      "gsll" = {
        archive = fetchurl {
          url = "http://beta.quicklisp.org/archive/gsll/2018-08-31/gsll-quicklisp-eeeda841-git.tgz";
          sha256 = "06728hrv7wsldafh45dqs7xh8hsnjlscivlpfys2rbd7bnqyhkpq";
        };
        name = "gsll";
        archiveName = "gsll-quicklisp-eeeda841-git.tgz";
        archiveSize = 317981;
        archiveMD5 = "4b21395e6c4531dc067d00ed10b580e1";
        archiveContentSHA1 = "de3edd6293d93620c33938c1ca6318ae13b6bdb4";
        prefix = "gsll-quicklisp-eeeda841-git";
        systemFiles = [
          "gsll.asd"
        ];
      };
      "gwkkwg-metabang-bind" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/ultralisp/archive/g/gwkkwg-metabang-bind-20200107193139.tgz";
          sha256 = "08kxv7kswhadz21c8rym1nj35lign56fm77gnzp62ysl63hhrw5x";
        };
        name = "gwkkwg-metabang-bind";
        archiveName = "gwkkwg-metabang-bind-20200107193139.tgz";
        archiveSize = 22888;
        archiveMD5 = "09b6294ec925a8cb735d694e99bff9fd";
        archiveContentSHA1 = "770b8d68854ee1131e30123006c4654e0f070d5b";
        prefix = "gwkkwg-metabang-bind-20200107193139";
        systemFiles = [
          "metabang-bind.asd"
        ];
      };
      "iterate" = {
        archive = fetchurl {
          url = "http://beta.quicklisp.org/archive/iterate/2021-02-28/iterate-20210228-git.tgz";
          sha256 = "1bd6m1lxmd6an75z7j61sms4v54bfxmg1n1w7zd7fm2kb15vai46";
        };
        name = "iterate";
        archiveName = "iterate-20210228-git.tgz";
        archiveSize = 332831;
        archiveMD5 = "16a4d7811ffc0f4a1cc45257c4cefd1d";
        archiveContentSHA1 = "728e1726ba6e06462656d4a87b7e279d7eddd6e7";
        prefix = "iterate-20210228-git";
        systemFiles = [
          "iterate.asd"
        ];
      };
      "lmj-global-vars" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/ultralisp/archive/l/lmj-global-vars-20190319075150.tgz";
          sha256 = "138nd6qk8b5ga3if8v0xm2d42dzi57maj7mzq63l0bqmyag2p9dq";
        };
        name = "lmj-global-vars";
        archiveName = "lmj-global-vars-20190319075150.tgz";
        archiveSize = 3492;
        archiveMD5 = "676e22ef5a721bda5464c1ce8ba7b436";
        archiveContentSHA1 = "320db16e16467b6af27fc9f30bc4c73c15d262ae";
        prefix = "lmj-global-vars-20190319075150";
        systemFiles = [
          "global-vars.asd"
        ];
      };
      "melisgl-named-readtables" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/ultralisp/archive/m/melisgl-named-readtables-20210107203417.tgz";
          sha256 = "1isr76k7j6z7sxlvnmizi3jkmr9l0msfbfj43jipixpcyi7gaigx";
        };
        name = "melisgl-named-readtables";
        archiveName = "melisgl-named-readtables-20210107203417.tgz";
        archiveSize = 33015;
        archiveMD5 = "cf0187add92715c51a74491d7deb1ab4";
        archiveContentSHA1 = "391460104e800fcbaaa19b23f0dad12dc8c36674";
        prefix = "melisgl-named-readtables-20210107203417";
        systemFiles = [
          "named-readtables.asd"
        ];
      };
      "pcostanza-closer-mop" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/archive/952/pcostanza-closer-mop-20210401111650.tgz";
          sha256 = "0a614by7y6wc8kxk7ddmkh8x484083gxjldysf2hry62ishjhj79";
        };
        name = "pcostanza-closer-mop";
        archiveName = "pcostanza-closer-mop-20210401111650.tgz";
        archiveSize = 23239;
        archiveMD5 = "7df59ecf1374fc7d4e0b8d463f3c4f2f";
        archiveContentSHA1 = "4432c434fb27c2e5b3420e64a62ef3bf53948445";
        prefix = "pcostanza-closer-mop-20210401111650";
        systemFiles = [
          "closer-mop.asd"
        ];
      };
      "sellout-external-program" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/ultralisp/archive/s/sellout-external-program-20190319080948.tgz";
          sha256 = "1bwj05644184npd0y68v03szi4fznnjbfrc0k2sm35k7906ndqab";
        };
        name = "sellout-external-program";
        archiveName = "sellout-external-program-20190319080948.tgz";
        archiveSize = 10578;
        archiveMD5 = "94e60386bcba8d72807aecd31ea0ec0b";
        archiveContentSHA1 = "fb6d241fd270bf88965016f5892e9cf65974d84d";
        prefix = "sellout-external-program-20190319080948";
        systemFiles = [
          "external-program.asd"
        ];
      };
      "sharplispers-split-sequence" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/ultralisp/archive/s/sharplispers-split-sequence-20210108013742.tgz";
          sha256 = "1v92v4vyzg0fn5nrjpygxx27nrf064zhfsrs2z2d7v31mz4zav4g";
        };
        name = "sharplispers-split-sequence";
        archiveName = "sharplispers-split-sequence-20210108013742.tgz";
        archiveSize = 11900;
        archiveMD5 = "b44b1d9507930c074ce12b57b9e3badc";
        archiveContentSHA1 = "3c85e8ace21971999611124dfcbaf46cbaafe69c";
        prefix = "sharplispers-split-sequence-20210108013742";
        systemFiles = [
          "split-sequence.asd"
        ];
      };
      "sionescu-bordeaux-threads" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/archive/1238/sionescu-bordeaux-threads-20210302003708.tgz";
          sha256 = "0lfpjfajk45b73m07r4hl7hgh4i0fdf52ljzbnri4kg9f1bcgzcn";
        };
        name = "sionescu-bordeaux-threads";
        archiveName = "sionescu-bordeaux-threads-20210302003708.tgz";
        archiveSize = 44673;
        archiveMD5 = "18888aa578e5b8564991ceefe6f997b3";
        archiveContentSHA1 = "2c2f0d566040510c5b6cf96c0935dbf6afcf9748";
        prefix = "sionescu-bordeaux-threads-20210302003708";
        systemFiles = [
          "bordeaux-threads.asd"
        ];
      };
      "sionescu-static-vectors" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/ultralisp/archive/s/sionescu-static-vectors-20201219005010.tgz";
          sha256 = "0s4k8firs88jmghac5mkyh4416qrz7lynw10zwv0aa3m6wvp72i3";
        };
        name = "sionescu-static-vectors";
        archiveName = "sionescu-static-vectors-20201219005010.tgz";
        archiveSize = 7225;
        archiveMD5 = "6c05cd284c25dfea633eab596877d403";
        archiveContentSHA1 = "f201b4a16158b4d0740fcc80ebd0498506ed8cf1";
        prefix = "sionescu-static-vectors-20201219005010";
        systemFiles = [
          "static-vectors.asd"
        ];
      };
      "trivial-features-trivial-features" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/archive/197/trivial-features-trivial-features-20210301214701.tgz";
          sha256 = "0gx5kapavx8kz7vr4k49bmmxwh0rdn8gc7xjd868h1ad988vz8xl";
        };
        name = "trivial-features-trivial-features";
        archiveName = "trivial-features-trivial-features-20210301214701.tgz";
        archiveSize = 11410;
        archiveMD5 = "773ca8f3fd2fff98a9e92a3da0d8d387";
        archiveContentSHA1 = "00eb0489cd0611cd9300410fc8a2d1042de105d9";
        prefix = "trivial-features-trivial-features-20210301214701";
        systemFiles = [
          "trivial-features.asd"
        ];
      };
      "trivial-garbage-trivial-garbage" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/ultralisp/archive/t/trivial-garbage-trivial-garbage-20200801112900.tgz";
          sha256 = "0cb23wr845n2jy5djmylganjl6fsi3fwan9xpp88hrij5dwqqizr";
        };
        name = "trivial-garbage-trivial-garbage";
        archiveName = "trivial-garbage-trivial-garbage-20200801112900.tgz";
        archiveSize = 10738;
        archiveMD5 = "a9e48253dfa7428174944b4919cd161b";
        archiveContentSHA1 = "9e48ab786828e2ef8bc41d2b3cc63e51c245acaa";
        prefix = "trivial-garbage-trivial-garbage-20200801112900";
        systemFiles = [
          "trivial-garbage.asd"
        ];
      };
      "trivial-gray-streams-trivial-gray-streams" = {
        archive = fetchurl {
          url = "http://dist.ultralisp.org/archive/194/trivial-gray-streams-trivial-gray-streams-20210118211457.tgz";
          sha256 = "0iyv69axmw4xbr3p0mak8vm6380gllbx2dqjn6ygxrxswij857jz";
        };
        name = "trivial-gray-streams-trivial-gray-streams";
        archiveName = "trivial-gray-streams-trivial-gray-streams-20210118211457.tgz";
        archiveSize = 8221;
        archiveMD5 = "46e18cec0a21b3ea9b62725474377775";
        archiveContentSHA1 = "e8b010ac3a3087337ed1cb54d605af6367d2f6f5";
        prefix = "trivial-gray-streams-trivial-gray-streams-20210118211457";
        systemFiles = [
          "trivial-gray-streams.asd"
        ];
      };
      "trivial-utf-8" = {
        archive = fetchurl {
          url = "http://beta.quicklisp.org/archive/trivial-utf-8/2020-09-25/trivial-utf-8-20200925-git.tgz";
          sha256 = "06v9jif4f5xyl5jd7ldg69ds7cypf72xl7nda5q55fssmgcydi1b";
        };
        name = "trivial-utf-8";
        archiveName = "trivial-utf-8-20200925-git.tgz";
        archiveSize = 45210;
        archiveMD5 = "799ece1f87cc4a83e81e598bc6b1dd1d";
        archiveContentSHA1 = "ec688f645de5b645659b2091a0ef4d50f4ff519f";
        prefix = "trivial-utf-8-20200925-git";
        systemFiles = [
          "trivial-utf-8.asd"
        ];
      };
      "uiop" = {
        archive = fetchurl {
          url = "http://beta.quicklisp.org/archive/uiop/2020-02-18/uiop-3.3.4.tgz";
          sha256 = "0n0fp55ivwi6gzhaywdkngnk2snpp9nn3mz5rq3pnrwldi9q7aav";
        };
        name = "uiop";
        archiveName = "uiop-3.3.4.tgz";
        archiveSize = 100266;
        archiveMD5 = "b13a79a5aede43c97428c1cac86d6c2e";
        archiveContentSHA1 = "236c12bfc4fe6dacc23844cfd10a57d1a4f181a6";
        prefix = "uiop-3.3.4";
        systemFiles = [
          "uiop.asd"
        ];
      };
    };
  qlSystems =
    {
      "alexandria" = {
        release = qlReleases."alexandria";
        name = "alexandria";
        systemFileName = "alexandria";
        requiredSystems = [
        ];
      };
      "antik" = {
        release = qlReleases."antik";
        name = "antik";
        systemFileName = "antik";
        requiredSystems = [
          qlSystems."gsll"
          qlSystems."physical-dimension"
        ];
      };
      "antik-base" = {
        release = qlReleases."antik";
        name = "antik-base";
        systemFileName = "antik-base";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ppcre"
          qlSystems."iterate"
          qlSystems."lisp-unit"
          qlSystems."metabang-bind"
          qlSystems."named-readtables"
          qlSystems."split-sequence"
        ];
      };
      "babel" = {
        release = qlReleases."cl-babel-babel";
        name = "babel";
        systemFileName = "babel";
        requiredSystems = [
          qlSystems."trivial-features"
          qlSystems."alexandria"
        ];
      };
      "bordeaux-threads" = {
        release = qlReleases."sionescu-bordeaux-threads";
        name = "bordeaux-threads";
        systemFileName = "bordeaux-threads";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."global-vars"
          qlSystems."trivial-features"
          qlSystems."trivial-garbage"
        ];
      };
      "cffi" = {
        release = qlReleases."cffi";
        name = "cffi";
        systemFileName = "cffi";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."babel"
          qlSystems."trivial-features"
        ];
      };
      "cffi-grovel" = {
        release = qlReleases."cffi";
        name = "cffi-grovel";
        systemFileName = "cffi-grovel";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cffi"
          qlSystems."cffi-toolchain"
        ];
      };
      "cffi-libffi" = {
        release = qlReleases."cffi";
        name = "cffi-libffi";
        systemFileName = "cffi-libffi";
        requiredSystems = [
          qlSystems."cffi"
          qlSystems."cffi-grovel"
          qlSystems."trivial-features"
        ];
      };
      "cffi-toolchain" = {
        release = qlReleases."cffi";
        name = "cffi-toolchain";
        systemFileName = "cffi-toolchain";
        requiredSystems = [
          qlSystems."cffi"
        ];
      };
      "cl-ana" = {
        release = qlReleases."cl-ana";
        name = "cl-ana";
        systemFileName = "cl-ana";
        requiredSystems = [
          qlSystems."cl-ana.binary-tree"
          qlSystems."cl-ana.calculus"
          qlSystems."cl-ana.clos-utils"
          qlSystems."cl-ana.columnar-table"
          qlSystems."cl-ana.csv-table"
          qlSystems."cl-ana.error-propogation"
          qlSystems."cl-ana.file-utils"
          qlSystems."cl-ana.fitting"
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.hash-table-utils"
          qlSystems."cl-ana.hdf-table"
          qlSystems."cl-ana.histogram"
          qlSystems."cl-ana.int-char"
          qlSystems."cl-ana.linear-algebra"
          qlSystems."cl-ana.lorentz"
          qlSystems."cl-ana.makeres"
          qlSystems."cl-ana.makeres-block"
          qlSystems."cl-ana.makeres-branch"
          qlSystems."cl-ana.makeres-graphviz"
          qlSystems."cl-ana.makeres-macro"
          qlSystems."cl-ana.makeres-progress"
          qlSystems."cl-ana.makeres-table"
          qlSystems."cl-ana.makeres-utils"
          qlSystems."cl-ana.map"
          qlSystems."cl-ana.math-functions"
          qlSystems."cl-ana.ntuple-table"
          qlSystems."cl-ana.package-utils"
          qlSystems."cl-ana.pathname-utils"
          qlSystems."cl-ana.plotting"
          qlSystems."cl-ana.quantity"
          qlSystems."cl-ana.reusable-table"
          qlSystems."cl-ana.serialization"
          qlSystems."cl-ana.spline"
          qlSystems."cl-ana.statistical-learning"
          qlSystems."cl-ana.statistics"
          qlSystems."cl-ana.table"
          qlSystems."cl-ana.table-utils"
          qlSystems."cl-ana.table-viewing"
          qlSystems."cl-ana.tensor"
        ];
      };
      "cl-ana.binary-tree" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.binary-tree";
        systemFileName = "cl-ana.binary-tree";
        requiredSystems = [
          qlSystems."cl-ana.functional-utils"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.macro-utils"
        ];
      };
      "cl-ana.calculus" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.calculus";
        systemFileName = "cl-ana.calculus";
        requiredSystems = [
          qlSystems."cl-ana.generic-math"
        ];
      };
      "cl-ana.clos-utils" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.clos-utils";
        systemFileName = "cl-ana.clos-utils";
        requiredSystems = [
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.symbol-utils"
          qlSystems."cl-ana.tensor"
          qlSystems."closer-mop"
        ];
      };
      "cl-ana.columnar-table" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.columnar-table";
        systemFileName = "cl-ana.columnar-table";
        requiredSystems = [
          qlSystems."cl-ana.reusable-table"
          qlSystems."cl-ana.table"
        ];
      };
      "cl-ana.csv-table" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.csv-table";
        systemFileName = "cl-ana.csv-table";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."antik"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.table"
          qlSystems."cl-csv"
          qlSystems."iterate"
        ];
      };
      "cl-ana.error-propogation" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.error-propogation";
        systemFileName = "cl-ana.error-propogation";
        requiredSystems = [
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.math-functions"
        ];
      };
      "cl-ana.file-utils" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.file-utils";
        systemFileName = "cl-ana.file-utils";
        requiredSystems = [
          qlSystems."external-program"
          qlSystems."split-sequence"
        ];
      };
      "cl-ana.fitting" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.fitting";
        systemFileName = "cl-ana.fitting";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.error-propogation"
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.map"
          qlSystems."cl-ana.math-functions"
          qlSystems."gsll"
        ];
      };
      "cl-ana.functional-utils" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.functional-utils";
        systemFileName = "cl-ana.functional-utils";
        requiredSystems = [
        ];
      };
      "cl-ana.generic-math" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.generic-math";
        systemFileName = "cl-ana.generic-math";
        requiredSystems = [
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.package-utils"
        ];
      };
      "cl-ana.gnuplot-interface" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.gnuplot-interface";
        systemFileName = "cl-ana.gnuplot-interface";
        requiredSystems = [
          qlSystems."external-program"
        ];
      };
      "cl-ana.gsl-cffi" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.gsl-cffi";
        systemFileName = "cl-ana.gsl-cffi";
        requiredSystems = [
          qlSystems."cffi"
        ];
      };
      "cl-ana.hash-table-utils" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.hash-table-utils";
        systemFileName = "cl-ana.hash-table-utils";
        requiredSystems = [
        ];
      };
      "cl-ana.hdf-cffi" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.hdf-cffi";
        systemFileName = "cl-ana.hdf-cffi";
        requiredSystems = [
          qlSystems."cffi"
          qlSystems."cffi-grovel"
        ];
      };
      "cl-ana.hdf-table" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.hdf-table";
        systemFileName = "cl-ana.hdf-table";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.binary-tree"
          qlSystems."cl-ana.hdf-typespec"
          qlSystems."cl-ana.hdf-utils"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.memoization"
          qlSystems."cl-ana.table"
          qlSystems."cl-ana.typed-table"
          qlSystems."cl-ana.typespec"
        ];
      };
      "cl-ana.hdf-typespec" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.hdf-typespec";
        systemFileName = "cl-ana.hdf-typespec";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cffi"
          qlSystems."cl-ana.hdf-cffi"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.memoization"
          qlSystems."cl-ana.string-utils"
          qlSystems."cl-ana.symbol-utils"
          qlSystems."cl-ana.typespec"
        ];
      };
      "cl-ana.hdf-utils" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.hdf-utils";
        systemFileName = "cl-ana.hdf-utils";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cffi"
          qlSystems."cl-ana.hdf-cffi"
          qlSystems."cl-ana.hdf-typespec"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.memoization"
          qlSystems."cl-ana.pathname-utils"
          qlSystems."cl-ana.string-utils"
          qlSystems."cl-ana.typespec"
        ];
      };
      "cl-ana.histogram" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.histogram";
        systemFileName = "cl-ana.histogram";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.binary-tree"
          qlSystems."cl-ana.clos-utils"
          qlSystems."cl-ana.fitting"
          qlSystems."cl-ana.functional-utils"
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.hash-table-utils"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.map"
          qlSystems."cl-ana.symbol-utils"
          qlSystems."cl-ana.tensor"
          qlSystems."iterate"
        ];
      };
      "cl-ana.int-char" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.int-char";
        systemFileName = "cl-ana.int-char";
        requiredSystems = [
        ];
      };
      "cl-ana.linear-algebra" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.linear-algebra";
        systemFileName = "cl-ana.linear-algebra";
        requiredSystems = [
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.math-functions"
          qlSystems."cl-ana.tensor"
          qlSystems."gsll"
        ];
      };
      "cl-ana.list-utils" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.list-utils";
        systemFileName = "cl-ana.list-utils";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.functional-utils"
          qlSystems."cl-ana.string-utils"
        ];
      };
      "cl-ana.lorentz" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.lorentz";
        systemFileName = "cl-ana.lorentz";
        requiredSystems = [
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.linear-algebra"
          qlSystems."cl-ana.tensor"
          qlSystems."iterate"
        ];
      };
      "cl-ana.macro-utils" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.macro-utils";
        systemFileName = "cl-ana.macro-utils";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.string-utils"
          qlSystems."cl-ana.symbol-utils"
          qlSystems."split-sequence"
        ];
      };
      "cl-ana.makeres" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.makeres";
        systemFileName = "cl-ana.makeres";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.error-propogation"
          qlSystems."cl-ana.file-utils"
          qlSystems."cl-ana.functional-utils"
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.hash-table-utils"
          qlSystems."cl-ana.hdf-utils"
          qlSystems."cl-ana.histogram"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.map"
          qlSystems."cl-ana.memoization"
          qlSystems."cl-ana.pathname-utils"
          qlSystems."cl-ana.plotting"
          qlSystems."cl-ana.reusable-table"
          qlSystems."cl-ana.serialization"
          qlSystems."cl-ana.string-utils"
          qlSystems."cl-ana.symbol-utils"
          qlSystems."cl-ana.table"
          qlSystems."cl-fad"
          qlSystems."external-program"
        ];
      };
      "cl-ana.makeres-block" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.makeres-block";
        systemFileName = "cl-ana.makeres-block";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.makeres"
        ];
      };
      "cl-ana.makeres-branch" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.makeres-branch";
        systemFileName = "cl-ana.makeres-branch";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.hash-table-utils"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.makeres"
          qlSystems."cl-ana.map"
        ];
      };
      "cl-ana.makeres-graphviz" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.makeres-graphviz";
        systemFileName = "cl-ana.makeres-graphviz";
        requiredSystems = [
          qlSystems."cl-ana.makeres"
          qlSystems."external-program"
        ];
      };
      "cl-ana.makeres-macro" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.makeres-macro";
        systemFileName = "cl-ana.makeres-macro";
        requiredSystems = [
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.makeres"
        ];
      };
      "cl-ana.makeres-progress" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.makeres-progress";
        systemFileName = "cl-ana.makeres-progress";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.makeres"
        ];
      };
      "cl-ana.makeres-table" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.makeres-table";
        systemFileName = "cl-ana.makeres-table";
        requiredSystems = [
          qlSystems."cl-ana.csv-table"
          qlSystems."cl-ana.hash-table-utils"
          qlSystems."cl-ana.hdf-table"
          qlSystems."cl-ana.hdf-utils"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.makeres"
          qlSystems."cl-ana.makeres-macro"
          qlSystems."cl-ana.memoization"
          qlSystems."cl-ana.ntuple-table"
          qlSystems."cl-ana.reusable-table"
          qlSystems."cl-ana.string-utils"
          qlSystems."cl-ana.table"
        ];
      };
      "cl-ana.makeres-utils" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.makeres-utils";
        systemFileName = "cl-ana.makeres-utils";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.file-utils"
          qlSystems."cl-ana.fitting"
          qlSystems."cl-ana.functional-utils"
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.histogram"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.makeres"
          qlSystems."cl-ana.map"
          qlSystems."cl-ana.pathname-utils"
          qlSystems."cl-ana.plotting"
          qlSystems."cl-ana.reusable-table"
          qlSystems."cl-ana.string-utils"
          qlSystems."cl-ana.symbol-utils"
          qlSystems."cl-ana.table"
        ];
      };
      "cl-ana.map" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.map";
        systemFileName = "cl-ana.map";
        requiredSystems = [
          qlSystems."cl-ana.hash-table-utils"
        ];
      };
      "cl-ana.math-functions" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.math-functions";
        systemFileName = "cl-ana.math-functions";
        requiredSystems = [
          qlSystems."cl-ana.generic-math"
          qlSystems."gsll"
        ];
      };
      "cl-ana.memoization" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.memoization";
        systemFileName = "cl-ana.memoization";
        requiredSystems = [
          qlSystems."alexandria"
        ];
      };
      "cl-ana.ntuple-table" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.ntuple-table";
        systemFileName = "cl-ana.ntuple-table";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cffi"
          qlSystems."cl-ana.gsl-cffi"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.table"
          qlSystems."cl-ana.typed-table"
          qlSystems."cl-ana.typespec"
          qlSystems."gsll"
        ];
      };
      "cl-ana.package-utils" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.package-utils";
        systemFileName = "cl-ana.package-utils";
        requiredSystems = [
          qlSystems."alexandria"
        ];
      };
      "cl-ana.pathname-utils" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.pathname-utils";
        systemFileName = "cl-ana.pathname-utils";
        requiredSystems = [
        ];
      };
      "cl-ana.plotting" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.plotting";
        systemFileName = "cl-ana.plotting";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.error-propogation"
          qlSystems."cl-ana.functional-utils"
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.gnuplot-interface"
          qlSystems."cl-ana.histogram"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.map"
          qlSystems."cl-ana.math-functions"
          qlSystems."cl-ana.pathname-utils"
          qlSystems."cl-ana.string-utils"
          qlSystems."cl-ana.tensor"
          qlSystems."external-program"
          qlSystems."split-sequence"
        ];
      };
      "cl-ana.quantity" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.quantity";
        systemFileName = "cl-ana.quantity";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.error-propogation"
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.symbol-utils"
        ];
      };
      "cl-ana.reusable-table" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.reusable-table";
        systemFileName = "cl-ana.reusable-table";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.table"
        ];
      };
      "cl-ana.serialization" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.serialization";
        systemFileName = "cl-ana.serialization";
        requiredSystems = [
          qlSystems."cl-ana.error-propogation"
          qlSystems."cl-ana.hdf-table"
          qlSystems."cl-ana.hdf-utils"
          qlSystems."cl-ana.histogram"
          qlSystems."cl-ana.int-char"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.typespec"
        ];
      };
      "cl-ana.spline" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.spline";
        systemFileName = "cl-ana.spline";
        requiredSystems = [
          qlSystems."cffi"
          qlSystems."cl-ana.fitting"
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.math-functions"
          qlSystems."cl-ana.tensor"
          qlSystems."gsll"
        ];
      };
      "cl-ana.statistical-learning" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.statistical-learning";
        systemFileName = "cl-ana.statistical-learning";
        requiredSystems = [
          qlSystems."cl-ana.functional-utils"
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.histogram"
          qlSystems."cl-ana.linear-algebra"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.map"
          qlSystems."cl-ana.math-functions"
          qlSystems."cl-ana.statistics"
        ];
      };
      "cl-ana.statistics" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.statistics";
        systemFileName = "cl-ana.statistics";
        requiredSystems = [
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.histogram"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.map"
          qlSystems."cl-ana.math-functions"
        ];
      };
      "cl-ana.string-utils" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.string-utils";
        systemFileName = "cl-ana.string-utils";
        requiredSystems = [
          qlSystems."split-sequence"
        ];
      };
      "cl-ana.symbol-utils" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.symbol-utils";
        systemFileName = "cl-ana.symbol-utils";
        requiredSystems = [
          qlSystems."cl-ana.list-utils"
        ];
      };
      "cl-ana.table" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.table";
        systemFileName = "cl-ana.table";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.functional-utils"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.string-utils"
          qlSystems."cl-ana.symbol-utils"
        ];
      };
      "cl-ana.table-utils" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.table-utils";
        systemFileName = "cl-ana.table-utils";
        requiredSystems = [
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.hash-table-utils"
          qlSystems."cl-ana.statistics"
          qlSystems."cl-ana.string-utils"
          qlSystems."cl-ana.symbol-utils"
          qlSystems."cl-ana.table"
        ];
      };
      "cl-ana.table-viewing" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.table-viewing";
        systemFileName = "cl-ana.table-viewing";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.histogram"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.plotting"
          qlSystems."cl-ana.string-utils"
          qlSystems."cl-ana.table"
        ];
      };
      "cl-ana.tensor" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.tensor";
        systemFileName = "cl-ana.tensor";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.generic-math"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.macro-utils"
          qlSystems."cl-ana.symbol-utils"
        ];
      };
      "cl-ana.typed-table" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.typed-table";
        systemFileName = "cl-ana.typed-table";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.string-utils"
          qlSystems."cl-ana.symbol-utils"
          qlSystems."cl-ana.table"
          qlSystems."cl-ana.typespec"
        ];
      };
      "cl-ana.typespec" = {
        release = qlReleases."cl-ana";
        name = "cl-ana.typespec";
        systemFileName = "cl-ana.typespec";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cffi"
          qlSystems."cl-ana.int-char"
          qlSystems."cl-ana.list-utils"
          qlSystems."cl-ana.memoization"
          qlSystems."cl-ana.string-utils"
          qlSystems."cl-ana.symbol-utils"
          qlSystems."cl-ana.tensor"
        ];
      };
      "cl-csv" = {
        release = qlReleases."cl-csv";
        name = "cl-csv";
        systemFileName = "cl-csv";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cl-interpol"
          qlSystems."iterate"
        ];
      };
      "cl-fad" = {
        release = qlReleases."edicl-cl-fad";
        name = "cl-fad";
        systemFileName = "cl-fad";
        requiredSystems = [
          qlSystems."bordeaux-threads"
          qlSystems."alexandria"
        ];
      };
      "cl-interpol" = {
        release = qlReleases."edicl-cl-interpol";
        name = "cl-interpol";
        systemFileName = "cl-interpol";
        requiredSystems = [
          qlSystems."cl-unicode"
          qlSystems."named-readtables"
        ];
      };
      "cl-ppcre" = {
        release = qlReleases."edicl-cl-ppcre";
        name = "cl-ppcre";
        systemFileName = "cl-ppcre";
        requiredSystems = [
        ];
      };
      "cl-unicode" = {
        release = qlReleases."edicl-cl-unicode";
        name = "cl-unicode";
        systemFileName = "cl-unicode";
        requiredSystems = [
          qlSystems."cl-unicode/base"
        ];
      };
      "cl-unicode/base" = {
        release = qlReleases."edicl-cl-unicode";
        name = "cl-unicode/base";
        systemFileName = "cl-unicode";
        requiredSystems = [
          qlSystems."cl-ppcre"
        ];
      };
      "cl-unicode/build" = {
        release = qlReleases."edicl-cl-unicode";
        name = "cl-unicode/build";
        systemFileName = "cl-unicode";
        requiredSystems = [
          qlSystems."cl-unicode/base"
          qlSystems."flexi-streams"
        ];
      };
      "closer-mop" = {
        release = qlReleases."pcostanza-closer-mop";
        name = "closer-mop";
        systemFileName = "closer-mop";
        requiredSystems = [
        ];
      };
      "external-program" = {
        release = qlReleases."sellout-external-program";
        name = "external-program";
        systemFileName = "external-program";
        requiredSystems = [
          qlSystems."trivial-features"
        ];
      };
      "fare-utils" = {
        release = qlReleases."fare-utils";
        name = "fare-utils";
        systemFileName = "fare-utils";
        requiredSystems = [
        ];
      };
      "flexi-streams" = {
        release = qlReleases."edicl-flexi-streams";
        name = "flexi-streams";
        systemFileName = "flexi-streams";
        requiredSystems = [
          qlSystems."trivial-gray-streams"
        ];
      };
      "foreign-array" = {
        release = qlReleases."antik";
        name = "foreign-array";
        systemFileName = "foreign-array";
        requiredSystems = [
          qlSystems."antik-base"
          qlSystems."cffi"
          qlSystems."cffi-grovel"
          qlSystems."static-vectors"
          qlSystems."trivial-garbage"
        ];
      };
      "global-vars" = {
        release = qlReleases."lmj-global-vars";
        name = "global-vars";
        systemFileName = "global-vars";
        requiredSystems = [
        ];
      };
      "gsll" = {
        release = qlReleases."gsll";
        name = "gsll";
        systemFileName = "gsll";
        requiredSystems = [
          qlSystems."alexandria"
          qlSystems."cffi-grovel"
          qlSystems."cffi-libffi"
          qlSystems."foreign-array"
          qlSystems."lisp-unit"
          qlSystems."metabang-bind"
          qlSystems."trivial-features"
          qlSystems."trivial-garbage"
        ];
      };
      "iterate" = {
        release = qlReleases."iterate";
        name = "iterate";
        systemFileName = "iterate";
        requiredSystems = [
        ];
      };
      "lisp-unit" = {
        release = qlReleases."OdonataResearchLLC-lisp-unit";
        name = "lisp-unit";
        systemFileName = "lisp-unit";
        requiredSystems = [
        ];
      };
      "metabang-bind" = {
        release = qlReleases."gwkkwg-metabang-bind";
        name = "metabang-bind";
        systemFileName = "metabang-bind";
        requiredSystems = [
        ];
      };
      "named-readtables" = {
        release = qlReleases."melisgl-named-readtables";
        name = "named-readtables";
        systemFileName = "named-readtables";
        requiredSystems = [
        ];
      };
      "physical-dimension" = {
        release = qlReleases."antik";
        name = "physical-dimension";
        systemFileName = "physical-dimension";
        requiredSystems = [
          qlSystems."fare-utils"
          qlSystems."foreign-array"
          qlSystems."trivial-utf-8"
        ];
      };
      "split-sequence" = {
        release = qlReleases."sharplispers-split-sequence";
        name = "split-sequence";
        systemFileName = "split-sequence";
        requiredSystems = [
        ];
      };
      "static-vectors" = {
        release = qlReleases."sionescu-static-vectors";
        name = "static-vectors";
        systemFileName = "static-vectors";
        requiredSystems = [
          qlSystems."cffi-grovel"
          qlSystems."alexandria"
          qlSystems."cffi"
        ];
      };
      "trivial-features" = {
        release = qlReleases."trivial-features-trivial-features";
        name = "trivial-features";
        systemFileName = "trivial-features";
        requiredSystems = [
        ];
      };
      "trivial-garbage" = {
        release = qlReleases."trivial-garbage-trivial-garbage";
        name = "trivial-garbage";
        systemFileName = "trivial-garbage";
        requiredSystems = [
        ];
      };
      "trivial-gray-streams" = {
        release = qlReleases."trivial-gray-streams-trivial-gray-streams";
        name = "trivial-gray-streams";
        systemFileName = "trivial-gray-streams";
        requiredSystems = [
        ];
      };
      "trivial-utf-8" = {
        release = qlReleases."trivial-utf-8";
        name = "trivial-utf-8";
        systemFileName = "trivial-utf-8";
        requiredSystems = [
        ];
      };
      "uiop" = {
        release = qlReleases."uiop";
        name = "uiop";
        systemFileName = "uiop";
        requiredSystems = [
        ];
      };
    };
in { inherit qlSystems qlReleases; }
