class Canticle{
  int id;
  String titulo;
  String html;
  String url;
  int categoria;
  String numero;
  String nr_2019;
  bool adve;
  bool laud;
  bool entr;
  bool nata;
  bool quar;
  bool pasc;
  bool pent;
  bool virg;
  bool cria;
  bool cpaz;
  bool fpao;
  bool comu;
  bool cfin;
  String conteudo;
  String html_base64;
  String ext_base64;

  Canticle(int id,String titulo,String html,String url,int categoria,String numero,String nr_2019,bool adve,bool laud,bool entr,bool nata,bool quar,bool pasc,bool pent,bool virg,bool cria,bool cpaz,bool fpao,bool comu,bool cfin,String conteudo,String html_base64,String ext_base){
    this.id = id;
    this.titulo = titulo;
    this.html = html ;
    this.url = url;
    this.categoria = categoria;
    this.numero = numero;
    this.nr_2019 = nr_2019;
    this.adve = adve;
    this.laud = laud;
    this.entr = entr;
    this.nata = nata;
    this.quar = quar;
    this.pasc = pasc;
    this.pent = pent;
    this.virg = virg;
    this.cria = cria;
    this.cpaz = cpaz;
    this.fpao = fpao;
    this.comu = comu;
    this.cfin = cfin;
    this.conteudo = conteudo;
    this.html_base64 = html_base64;
    this.ext_base64 = ext_base64;
  }


  Canticle.fromJson(Map json) : id = json['id'],
        titulo = json['titulo'],
        html = json['html'],
        url = json['urk'],
        categoria = json['categoria'],
        numero = json['numero'],
        nr_2019 = json["nr_2019"],
        adve = json['adve'],
        laud = json['laud'],
        entr = json['entr'],
        nata = json['nata'],
        quar = json['quar'],
        pasc = json['pasc'],
        pent = json['pent'],
        virg = json['virg'],
        cria = json['cria'],
        cpaz = json['cpaz'],
        fpao = json['fpao'],
        comu = json['comu'],
        cfin = json['cfin'],
        conteudo = json['conteudo'],
        html_base64 = json['html_base64'],
        ext_base64 = json['ext_base64'];


  Map toJson() {
    return {'id': id,'titulo': titulo,'html': html ,'url': url,'categoria': categoria,'numero': numero,,'nr_2019': nr_2019,'adve': adve,'laud': laud,'entr': entr,'nata': nata,'quar': quar,'pasc': pasc,'pent': pent,'virg': virg,'cria': cria,'cpaz': cpaz,'fpao': fpao,'comu': comu,'cfin': cfin,'conteudo': conteudo,'html_base64': html_base64,'ext_base64': ext_base64};
  }

}