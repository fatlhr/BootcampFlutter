import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';
import 'titan.dart';

void main(List<String> args) {
  Titan titan = new Titan();
  Armor_titan ar_t = new Armor_titan();
  Attack_titan at_t = new Attack_titan();
  Beast_titan bt = new Beast_titan();
  Human hum = new Human();

  titan.setPowerPoint(7);
  ar_t.setPowerPoint(9);
  at_t.setPowerPoint(8);
  bt.setPowerPoint(10);
  hum.setPowerPoint(2);

  print("Titan has ${titan.getPowerPoint()} power point");
  print("Armor Titan has ${ar_t.getPowerPoint()} power point, ${ar_t.terjang()}");
  print("Attack Titan has ${at_t.getPowerPoint()} power point, ${at_t.punch()}");
  print("Beast Titan has ${bt.getPowerPoint()} power point, ${bt.lempar()}");
  print("Human has ${hum.getPowerPoint()} power point, ${hum.killAlltitan()}");
}
