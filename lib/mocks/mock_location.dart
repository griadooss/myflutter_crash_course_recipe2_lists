import '../models/location.dart';
import '../models/location_fact.dart';

mixin MockLocation implements Location {
  static Location fetchAny() {
    return Location(
      name: 'Gosnells',
      imglink:
          'https://images.perthnow.com.au/publication/C-832886/c95f6aff02b493ac1b83ab2ec598248bc16890a7-16x9-x0y92w848h476.jpg?imwidth=668&impolicy=pn_v3',
      facts: <LocationFact>[
        LocationFact(title: 'Summary', text: '''The City area has a long and interesting history, celebrating the 100th anniversary of the Gosnells Road Board (now known as the City of Gosnells) in 2007. Under the direction of the City’s History and Heritage Strategy, staff aim to document, interpret and preserve this significant history and heritage for the enjoyment of current and future generations. '''),
        LocationFact(
            title: 'How to get there',
            text: '''Gosnells is served by Gosnells and Seaforth railway stations. These stations are on the suburban Perth to Armadale railway line, with trains departing approximately every 15 minutes to the city. Train services are more frequent during peak periods, with trains departing approximately every 5 to 10 minutes. These services are operated by the state-owned public transport company, Transperth. It takes approximately 23 minutes to travel from Gosnells to Perth by train.  '''),
        LocationFact(
            title: 'What to do there', text: '''The City has numerous places significant for their history, heritage, or for their collection of historic material and objects. Select from the links below. To find out what the City is doing to record and preserve its history and heritage, look at the links available on the Community Involvement page. To research local historic information online, access the City's library catalogue.  ''')
      ],
    );
  }
}
