// Property Name
// REFRESH-INTERVAL
//
// Purpose
// This property specifies a suggested minimum interval for polling for changes of the calendar data from the original source of that data.
//
// Value Type
// DURATION -- no default
//
// Property Parameters
// IANA and non-standard property parameters can be specified on this property.
//
// Conformance
// This property can be specified once in an iCalendar object.
//
// Description
// This property specifies a positive duration that gives a suggested minimum polling interval for checking for updates to the calendar data. The value of this property SHOULD be used by calendar user agents to limit the polling interval for calendar data updates to the minimum interval specified.
//
// Format Definition
// This property is defined by the following notation:
//
// refresh = "REFRESH-INTERVAL" refreshparam ":" dur-value CRLF ;consisting of a positive duration of time.
//
// refreshparam = *(
//              ;
//              ; The following is REQUIRED,
//              ; but MUST NOT occur more than once.
//              ;
//              (";" "VALUE" "=" "DURATION") /
//              ;
//              ; The following is OPTIONAL,
//              ; and MAY occur more than once.
//              ;
//              (";" other-param)
//              ;
//              )
// Example
// The following is an example of this property
//
//  REFRESH-INTERVAL;VALUE=DURATION:P1W

class RefreshInterval {}
