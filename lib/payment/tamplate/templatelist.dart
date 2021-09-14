class TempModel {
  String name;
  String phone;
  String amount;
  String details;
  String date;

  TempModel(this.name, this.phone,this.amount,this.details,this.date);
}

List<TempModel> template = tempData.map((item) => 
TempModel(
  item['name'].toString(),
  item['phone'].toString(),
  item['amount'].toString(),
  item['details'].toString(),
  item['date'].toString(),
),
).toList();


var tempData = [
  {
    'name':'Kishore',
    'phone':'9080438136',
    'amount':'25,000',
    'details':'Thanks For the Coffee',
    'date':'today'
  },
  {
    'name':'sarath',
    'phone':'9092448101',
    'amount':'5,000',
    'details':'Thanks For the bill payment ',
    'date':'today'
  },
  {
    'name':'jarvis',
    'phone':'9097869564',
    'amount':'1,50,00,000',
    'details':'Server Maitanence',
    'date':'today'
  },
  {
    'name':'Goverment',
    'phone':'80909756541',
    'amount':'50,000',
    'details':'Tax Payment',
    'date':'yesterday'
  },
  {
    'name':'Aries',
    'phone':'80909756541',
    'amount':'5,000',
    'details':'Money Given back',
    'date':'yesterday'
  },
  {
    'name':'rias',
    'phone':'6789567456',
    'amount':'2,000',
    'details':'Thanks for that work',
    'date':'yesterday'
  }
];