class Conteudo {
  List<Segmento> segmento;

  Conteudo({
    this.segmento,
  });

  Conteudo.fromJson(Map<String, dynamic> json) {
    if (json['segmento'] != null) {
      segmento = new List<Segmento>();
      json['segmento'].forEach((v) {
        segmento.add(new Segmento.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.segmento != null) {
      data['segmento'] = this.segmento.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Segmento {
  String texto;
  String cor;

  Segmento({
    this.texto,
    this.cor,
  });

  Segmento.fromJson(Map<String, dynamic> json) {
    texto = json['texto'];
    cor = json['cor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['texto'] = this.texto;
    data['cor'] = this.cor;
    return data;
  }
}

/**
 * 
 {
    "segmento": [
        {
            "texto": "Shyam",
            "cor": "0xFFFFFFFF"
        }
    ]
}
 */
