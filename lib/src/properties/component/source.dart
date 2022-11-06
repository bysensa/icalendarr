// Property Name
// SOURCE
//
// Purpose
// This property identifies a URI where calendar data can be refreshed from.
//
// Value Type
// URI -- no default
//
// Property Parameters
// IANA and non-standard property parameters can be specified on this property.
//
// Conformance
// This property can be specified once in an iCalendar object.
//
// Description
// This property identifies a location where a client can retrieve updated data for the calendar. Clients SHOULD honor any specified "REFRESH-INTERVAL" value when periodically retrieving data. Note that this property differs from the "URL" property in that "URL" is meant to provide an alternative representation of the calendar data rather than the original location of the data.
//
// Format Definition
// This property is defined by the following notation:
//
//  source       = "SOURCE" sourceparam ":" uri CRLF
//  sourceparam = *(";" other-param)
// Example
// The following is an example of this property
//
//  SOURCE;VALUE=URI:https://example.com/holidays.ics
part of '../property.dart';

class Source {}
