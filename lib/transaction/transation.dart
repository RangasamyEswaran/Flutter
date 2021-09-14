  List<TranceModel> transation = tranceData.map(
(item) => TranceModel(
  item['tranceName'].toString(),
  item['trnceIcon'].toString(),
  item['tranceDate'].toString(),
  item['tranceAmount'].toString(),
  item['tranceDeatails'].toString(),
  item['contectNo'].toString()
),
).toList();

  class TranceModel {
  String tranceName;
  String trnceIcon;
  String tranceDate;
  String tranceAmount;
  String tranceDeatails;
  String contectNo;
  
  TranceModel(this.tranceName, this.trnceIcon, this.tranceDate, this.tranceAmount, this.tranceDeatails, this.contectNo);
}
final List tranceData= [
  {
    "tranceName": "Sarathkumar.R",
    "trnceIcon": "assets/icon/out.png",
    "tranceDate": "16/08/2021",
    "tranceAmount": "-1,25,000",
    "tranceDeatails": "Outgoing Transaction",
    "color": "red",
    "contectNo":"9092448101"
  },
  {
    "trnceIcon": "assets/icon/in.png",
    "tranceName" : "Kishore",
    "tranceDeatails" : "Incoming Trensfer",
    "tranceAmount" :"30,000",
    "tranceDate" : "Today",
    "color": "green",
    "contectNo":"9080438136"
  },
  {
    "trnceIcon": "assets/icon/out.png",
    "tranceName" : "Sarathkumar",
    "tranceDeatails" : "External Trensfer",
    "tranceAmount" : "-45,000",
    "tranceDate" : "Today",
    "color": "red",
    "contectNo":"9092448101"
  },
  {
    "trnceIcon": "assets/icon/out.png",
    "tranceName" : "Lucifar",
    "tranceDeatails" : "Payment Card Transaction",
    "tranceAmount" : "-15,30,000",
    "tranceDate" : "Today",
    "color": "red",
    "contectNo":"9976909914"
  },
  {
    "trnceIcon": "assets/icon/out.png",
    "tranceName" : "Kishore",
    "tranceDeatails" : "External Trensfer",
    "tranceAmount" : "-30,000",
    "tranceDate" : "Today",
    "color": "red",
    "contectNo":"9080438136"
  },
  {
    "trnceIcon": "assets/icon/out.png",
    "tranceName" : "Jarvis",
    "tranceDeatails" : "Payment Card Transaction",
    "tranceAmount" : "-30,30,000",
    "tranceDate" : "yesterday",
    "color": "red",
    "contectNo":"9790758990"
  },
  {
    "trnceIcon": "assets/icon/in.png",
    "tranceName" : "Kishore",
    "tranceDeatails" : "Incoming Trensfer",
    "tranceAmount" : "15,000",
    "tranceDate" : "Today",
    "color": "green",
    "contectNo":"9080438136"

  },
  {
    "trnceIcon": "assets/icon/in.png",
    "tranceName" : "Friday",
    "tranceDeatails" : "Incoming Trensfer",
    "tranceAmount" : "1,00,00,000",
    "tranceDate" : "yesterday",
    "color": "green",
    "contectNo":"9098909876"
  },
  {
    "trnceIcon": "assets/icon/out.png",
    "tranceName" : "Sarathkumar",
    "tranceDeatails" : "External Trensfer",
    "tranceAmount" : "-45,000",
    "tranceDate" : "Today",
    "color": "red",
    "contectNo":"9092448101"
  },
  {
    "trnceIcon": "assets/icon/out.png",
    "tranceName" : "Lucifar",
    "tranceDeatails" : "Payment Card Transaction",
    "tranceAmount" : "-15,30,000",
    "tranceDate" : "Today",
    "color": "red",
    "contectNo":"9976909914"
  },
  {
    "trnceIcon": "assets/icon/out.png",
    "tranceName" : "Kishore",
    "tranceDeatails" : "External Trensfer",
    "tranceAmount" : "-30,000",
    "tranceDate" : "Today",
    "color": "red",
    "contectNo":"9080438136"
  },
  {
    "trnceIcon": "assets/icon/out.png",
    "tranceName" : "Jarvis",
    "tranceDeatails" : "Payment Card Transaction",
    "tranceAmount" : "-30,30,000",
    "tranceDate" : "Today",
    "color": "red",
    "contectNo":"9790758990"
  },
  {
    "trnceIcon": "assets/icon/in.png",
    "tranceName" : "Kishore",
    "tranceDeatails" : "Incoming Trensfer",
    "tranceAmount" : "15,000",
    "tranceDate" : "Today",
    "color": "green",
    "contectNo":"9080438136"
  },
  {
    "trnceIcon": "assets/icon/in.png",
    "tranceName" : "Friday",
    "tranceDeatails" : "Incoming Trensfer",
    "tranceAmount" : "1,00,00,000",
    "tranceDate" : "Today",
    "color": "green",
    "contectNo":"9098909876"
  },
];

