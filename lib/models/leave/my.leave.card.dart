import 'package:flutter/material.dart';

final List<Map<String, dynamic>> approvalData = [
  {
    'id': '1',
    'name': 'Sonu Nigam',
    'date': '15 days',
    'dateinfo': 'Tue, 22 Nov - Fri, 24 Nov',
    'leaveTypeName': 'Business leave'
  },
  {
    'id': '2',
    'name': 'nellen iarkoze',
    'date': '12 days',
    'dateinfo': 'Tue, 27 Nov - Fri, 30 Nov',
    'leaveTypeName': 'Annual Leave'
  },
  {
    'id': '3',
    'name': 'Sonu Nigam',
    'date': '18 days',
    'dateinfo': 'Tue, 22 Nov - Fri, 25 Nov',
    'leaveTypeName': 'Long-term sick'
  },
  {
    'id': '4',
    'name': 'Sonu Nigam',
    'date': '20 days',
    'dateinfo': 'Tue, 2 Nov - Fri, 20 Nov',
    'leaveTypeName': 'Short-term sick'
  },
  {
    'id': '5',
    'name': 'David Niwewe',
    'date': '15 days',
    'dateinfo': 'Tue, 10 Nov - Fri, 25 Nov',
    'leaveTypeName': 'Study leave'
  },
  {
    'id': '6',
    'name': 'Davilla Niwewe',
    'date': '4 days',
    'dateinfo': 'Tue, 16 Nov - Fri, 20 Nov',
    'leaveTypeName': 'Maternity leave'
  },
];

final List<Map<String, dynamic>> leaveHistoryData = [
  {
    'id': '1',
    'date': '15 days',
    'status': 'Pending',
    'dateinfo': 'Tue, 22 Nov - Fri, 24 Nov',
    'leaveTypeName': 'Business leave'
  },
  {
    'id': '2',
    'date': '12 days',
    'status': 'Approved',
    'dateinfo': 'Tue, 27 Nov - Fri, 30 Nov',
    'leaveTypeName': 'Annual Leave'
  },
  {
    'id': '3',
    'date': '18 days',
    'status': 'Declined',
    'dateinfo': 'Tue, 22 Nov - Fri, 25 Nov',
    'leaveTypeName': 'Long-term sick'
  },
  {
    'id': '4',
    'date': '20 days',
    'status': 'Approved',
    'dateinfo': 'Tue, 2 Nov - Fri, 20 Nov',
    'leaveTypeName': 'Short-term sick'
  },
  {
    'id': '5',
    'date': '15 days',
    'status': 'Pending',
    'dateinfo': 'Tue, 10 Nov - Fri, 25 Nov',
    'leaveTypeName': 'Study leave'
  },
  {
    'id': '6',
    'date': '4 days',
    'status': 'Declined',
    'dateinfo': 'Tue, 16 Nov - Fri, 20 Nov',
    'leaveTypeName': 'Maternity leave'
  },
];

List<Map<String, dynamic>> cards = [
  {
    'id': 1,
    'icon': 'assets/images/Business_leave.png',
    'name': 'Business leave',
    'date': '15 days',
    'color': const Color(0xFFFDF1EC),
  },
  {
    'id': 2,
    'icon': 'assets/images/annual_leave.png',
    'name': 'Annual Leave',
    'date': '10 days',
    'color': const Color(0xFFE0EDFF),
  },
  {
    'id': 3,
    'icon': 'assets/images/Long-term_sick.png',
    'name': 'Long-term sick',
    'date': '10 days',
    'color': const Color(0xFFDFFBFE),
  },
  {
    'id': 4,
    'icon': 'assets/images/Short-term_sick.png',
    'name': 'Short-term sick',
    'date': '10 days',
    'color': const Color(0xFFFFF4E0),
  },
  {
    'id': 5,
    'icon': 'assets/images/Study_leave.png',
    'name': 'Study leave',
    'date': '10 days',
    'color': const Color(0xFFECFDEF),
  },
  {
    'id': 6,
    'icon': 'assets/images/Maternity _leave.png',
    'name': 'Maternity  leave',
    'date': '10 days',
    'color': const Color(0xFFFCE0FF),
  },
  // {
  //   'id': 6,
  //   'icon': images.calendar_today,
  //   'name': 'Maternity  leave',
  //   'date': '10 days',
  //   'color': Color(0xFFE0EDFF),
  // },
  // {
  //   'id': 6,
  //   'icon': images.calendar_today,
  //   'name': 'Maternity  leave',
  //   'date': '10 days',
  //   'color': Color(0xFFE0EDFF),
  // },
  // {
  //   'id': 6,
  //   'icon': images.calendar_today,
  //   'name': 'Maternity  leave',
  //   'date': '10 days',
  //   'color': Color(0xFFE0EDFF),
  // },
];
