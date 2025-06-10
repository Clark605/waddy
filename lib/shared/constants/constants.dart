import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Map<String, String>> offers = [
  {
    'category': 'Packages',
    'title': 'Family Packages',
    'description': 'Description for offer 1',
    'imageUrl':
'https://s3-alpha-sig.figma.com/img/b2e0/1c89/fc50aee3e6d08dbbe94dc2a03d65efc9?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=eVE1gR-A8GfBIrweYFjKPPs2fiftZ9W-QJOVwDK~dygyAPzV1HBGfl60Zjeik9UJG9pgR4QJrwJNkAwOJyfxpa4k6Wa7dejIpvrjwupNxE4J84GBK8FOHnjGyz02NbK07A15obvpWJA8obZXOes8ENcfdAGBQmSmvpatxq6VpOWl8CHKmDoDaoQTJIhSYzC73WxO8rWyd2ZjnLaKXbK~~Kh3hZPBR5ytFLlO~Ri7cMgj0djVCW1a0x8OOtmzBER0JeS71GoDGolLyG8Q8VLX2lBPTSu1d-uuDZap8ZLs4OKKRlIy5BoVm0b2AdwViuwJGm-TcayCg5A1LkZvgSeOCw__'
  },
  {
    'category': 'Destinations',
    'title': 'Dahab',
    'description': 'Description for offer 2',
    'imageUrl': 'https://s3-alpha-sig.figma.com/img/bfa3/0870/c48c387b547ca8910989a46f293f0d80?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=JoH3Yegzs9mDH4VLgMgP393ZUQE7F~8TDs4d0ellaCV8T5povsGNHD-7BfRu-uJj-gMwO1S5uJ-D5HKHfjZm9LomrzZ8yIkTUQcoFW2pbtULaASHMe5fj3F25iPuyjQoqtVGqNPXtjjB1TwZLg5c1k2~1vJokvbBDuGbZh9BehXhjUxwS5CwTxKLSZmuNdTXWMRvaEF~nglnZaVfWbfBwe4~8oke5VGsXLIJPe1nifICTu3Z0J-KsxD7URLrW2XdriRE6hTa~QoDa3Rbx-Zc4eBr1C0llwFpHFbC9kYycDVrnxqIF4ig99wseAOtTpEJ89kQfASPQ96lxNPaUflVag__',
  },
  {
    'category': 'Activites',
    'title': 'Cinemas',
    'description': 'Description for offer 3',
    'imageUrl': 'https://s3-alpha-sig.figma.com/img/b626/4d62/b7913826ef1927a5ac8dd71d5e957151?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=r3ggh-u0q5DUxtxIoC5zB1eM9RVkGxDE1bHiRO05QJny37RahgzXlx11PqO~L0TDOzImLqg2sTSU9gaX0RaU6yZI1CY0gb59VElFw~N46kMUkroaIV0l8PhdT15YkcnJBeKCL81xSUqREKBsXwXtATMe3fJnZr8tVE2X-YGYhFv~S2iGzfL50NFyiTP8DMzg4dDEVH9xK4e9rSiUOuuGpHCwAuDIphNM0aY~qxZNlGSReRtwOuchr7d8yl7m32R-SVoROrJK6RgHvztkgxMoi8Q6hj-2D4q4sDaqlfKqIX5sh~eWnJzt8TCHv8ASheA9a3Cpz1B~hbAyNH~vyyYeKw__',
  },

];

final List<Map<String, dynamic>> categories = [
  {
    'title':'Food' ,
    'icon':Icons.fastfood
  },
  {
    'title':'Cafe' ,
    'icon':Icons.local_cafe
  },
  {
    'title':'Game' ,
    'icon':Icons.videogame_asset
  },
  {
    'title':'Hotel' ,
    'icon':Icons.hotel
  },
  {
    'title':'Cinema' ,
    'icon':Icons.local_movies_rounded,
  },
  {
    'title':'Museum' ,
    'icon':Icons.museum
  },
  {
    'title':'Mall' ,
    'icon':Icons.store_mall_directory
  },




];

List<Map<String, String>> destinations = [
  {

    'title': 'Emlisoft',
    'imageUrl':
    'https://s3-alpha-sig.figma.com/img/e91d/93cd/5bd6e523d9f52b9a9749cb682eabb3fa?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=nBKnS8knNY8in8LdpCRIJWLp8PfUSV26fpIb2Z7vLzOPXI6-3-2CSzTbxtBe9u5NQDOEhjJ9qux3nd2Va7mpetKk1kX6THnOew6gDYabqxSMwTEE8Jsq8gVmq-39CNvap~vf9-W-xKLjrGCrsSO-XU3pYg1ijavqSzSazp~Jtrf7wB2nFlfdlzfQXRTLzuJeXNczib2dS9cwHsooJ7fq7W0YenNwAfA0aCOUd0575-e8Ki3fyaRUUrSO0I0XqWtr~UvJGE~UKUpomCp91ySr-j343rEBfNQWkE7qSjyq2IfO0toIKzrOGk0fSyTDvJlxu1z~HlnfqAcencC8ViWX6w__',
    'rating':'3.9'
  },
  {
    'title': 'Luxor',
    'imageUrl': 'https://s3-alpha-sig.figma.com/img/5532/4a2e/cbd65b1af5593e1fb67be51f3ced3dd2?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=sSI-QFnZnjRxNF2hgLg5j8rpNLtllSMzpwmtwjdXl2dWnTkQntnkItx0IuB45mY4CrNoIbVOJGAsrpCECylyvqEvTiDdAKAvbDk2-Yn4hcB7s2p253Q3FCrNkAIw2190rd6qkp7D5UdnsbihjaI3gpvEW-8-3fZwAqDcg4JNsHTWOG5npUY12eNvjckn2NSBLy~yoX~HxcXgUJgQ9bfP5oSDnDPvOAu7AbzLh4IVPvlGC2kUv7lcELvf0~~IFIMc3LPUIRu1InQn8AZXsF7pE7zkBSmZv6xW1JLT0mzzd65sbVUcRtEqKI9ujNElkKvbO6Glw8hD2KeOR1MSlU0YOA__',
    'rating':'4.9'
  },
  {
    'title': 'Sewa',
    'imageUrl': 'https://s3-alpha-sig.figma.com/img/708a/4048/e1b7311107563d54b18060d9cb18adb0?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=r0EMgI1NB4ASZ7c4CXb0OR0BwWMYLkHXIaI7QeB2RPJCzbhMz6dtJXM~-pecPqVTe2NvxPujV-jxmb8pD~jDK0e1nQ3ntfpLk4ivcj5cBxAEG7YRuGEbt7ADrOkaTaDP6Stm5GZgNS-LLOww-F5S2EkjcQcoyd2O42fIDePS9baPQ8iNQR4LcHRcpWWbQneAct~0rXNWZnq4IRD12fZOsI5gXLCro8c5m3QWHuCAAgiAiH5lzrObWoMR~EZY6Ytvu8Zqev6YYke3hruUAL62VoZkNC9EKFAE9aOuFZhbg8rVIfydWZ9YWC8dFzuT07JY-urwGILV2GqgrgGgvUsUWg__',
    'rating':'3.2'
  },
  {
    'title': 'Castle',
    'imageUrl': 'https://s3-alpha-sig.figma.com/img/b730/3916/8230a6308755b57e8044c33d67aff2b7?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=XG5SnNgQ~uwIQAYM~19lsrjxoUgJB-0atVWncKRowluJbHPzj65IfjSbrFhpbp39W0eRdoqiJYg~g7jOFsg9Sxao7A65q0oPyM6RZZNifz30~RxrY4I~ZX8aNEQfXTyV0gr0~m52fID6ux4WCFiXwVNWxi6z9-XdE9jy2I0xN823IIq2awc7T1w2US2jPEd~UJ80cntnrjFeVStrHOWtXaPOb8N0u4xfC-XRO0In5I1UVn-rHpAi17QSKHoOGdILzO23bTXVDCTIdHRbp16mZAmW8D1jx3pBVCshiRPRIk89FF-NjMLr-TlWQ0GJ3ADYtrFO~1rvJc1KK9Sj2RerBw__',
    'rating':'4.3'
  },
];

List<Map<String, String>> packages = [
  {

    'title': 'Solo',

    'imageUrl':
    'https://s3-alpha-sig.figma.com/img/b2e0/1c89/fc50aee3e6d08dbbe94dc2a03d65efc9?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=eVE1gR-A8GfBIrweYFjKPPs2fiftZ9W-QJOVwDK~dygyAPzV1HBGfl60Zjeik9UJG9pgR4QJrwJNkAwOJyfxpa4k6Wa7dejIpvrjwupNxE4J84GBK8FOHnjGyz02NbK07A15obvpWJA8obZXOes8ENcfdAGBQmSmvpatxq6VpOWl8CHKmDoDaoQTJIhSYzC73WxO8rWyd2ZjnLaKXbK~~Kh3hZPBR5ytFLlO~Ri7cMgj0djVCW1a0x8OOtmzBER0JeS71GoDGolLyG8Q8VLX2lBPTSu1d-uuDZap8ZLs4OKKRlIy5BoVm0b2AdwViuwJGm-TcayCg5A1LkZvgSeOCw__'
  },
  {

    'title': 'Dou',
    'imageUrl': 'https://s3-alpha-sig.figma.com/img/bfa3/0870/c48c387b547ca8910989a46f293f0d80?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=JoH3Yegzs9mDH4VLgMgP393ZUQE7F~8TDs4d0ellaCV8T5povsGNHD-7BfRu-uJj-gMwO1S5uJ-D5HKHfjZm9LomrzZ8yIkTUQcoFW2pbtULaASHMe5fj3F25iPuyjQoqtVGqNPXtjjB1TwZLg5c1k2~1vJokvbBDuGbZh9BehXhjUxwS5CwTxKLSZmuNdTXWMRvaEF~nglnZaVfWbfBwe4~8oke5VGsXLIJPe1nifICTu3Z0J-KsxD7URLrW2XdriRE6hTa~QoDa3Rbx-Zc4eBr1C0llwFpHFbC9kYycDVrnxqIF4ig99wseAOtTpEJ89kQfASPQ96lxNPaUflVag__',
  },
  {

    'title': 'Friends',
    'imageUrl': 'https://s3-alpha-sig.figma.com/img/b626/4d62/b7913826ef1927a5ac8dd71d5e957151?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=r3ggh-u0q5DUxtxIoC5zB1eM9RVkGxDE1bHiRO05QJny37RahgzXlx11PqO~L0TDOzImLqg2sTSU9gaX0RaU6yZI1CY0gb59VElFw~N46kMUkroaIV0l8PhdT15YkcnJBeKCL81xSUqREKBsXwXtATMe3fJnZr8tVE2X-YGYhFv~S2iGzfL50NFyiTP8DMzg4dDEVH9xK4e9rSiUOuuGpHCwAuDIphNM0aY~qxZNlGSReRtwOuchr7d8yl7m32R-SVoROrJK6RgHvztkgxMoi8Q6hj-2D4q4sDaqlfKqIX5sh~eWnJzt8TCHv8ASheA9a3Cpz1B~hbAyNH~vyyYeKw__',
  },

];

String kTemplate = 'template';

String kName = 'name';
String kId = 'id';
String kSprites = 'sprites';
String kTypes = 'types';
String kType = 'type';
String kOther = 'other';
String kOfficialArtwork = 'official-artwork';
String kFrontDefault = 'front_default';
String kFrontShiny = 'front_shiny';
String kPath = 'path';
