// Property Name
// COLOR
//
// Purpose
// This property specifies a color used for displaying the calendar, event, todo, or journal data.
//
// Value Type
// TEXT
//
// Property Parameters
// IANA and non-standard property parameters can be specified on this property.
//
// Conformance
// This property can be specified once in an iCalendar object or in "VEVENT", "VTODO", or "VJOURNAL" calendar components.
//
// Description
// This property specifies a color that clients MAY use when presenting the relevant data to a user. Typically, this would appear as the "background" color of events or tasks. The value is a case-insensitive color name taken from the CSS3 set of names, defined in Section 4.3 of [W3C.REC-css3-color-20110607].
//
// Format Definition
// This property is defined by the following notation:
//
//  color          = "COLOR" colorparam ":" text CRLF
//                ; Value is CSS3 color name
//  colorparam     = *(";" other-param)
// Example
// The following is an example of this property
//
//  COLOR:turquoise

class Color {}
