import 'package:flutter/material.dart';
import 'package:myband_flutter/screens/add_post_screen.dart';
import 'package:myband_flutter/screens/advert_screen.dart';
import 'package:myband_flutter/screens/feed_screen.dart';
import 'package:myband_flutter/screens/profile_screen.dart';
import 'package:myband_flutter/screens/search_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedScreen(),
  SearchScreen(),
  AddPostScreen(),
  AdvertScreen(),
  ProfileScreen(),
];
