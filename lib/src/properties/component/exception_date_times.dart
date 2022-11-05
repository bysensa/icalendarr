// Property Name
// EXDATE
//
// Purpose
// This property defines the list of DATE-TIME exceptions for recurring events, to-dos, journal entries, or time zone definitions.
//
// Value Type
// The default value type for this property is DATE-TIME. The value type can be set to DATE.
//
// Property Parameters
// IANA, non-standard, value data type, and time zone identifier property parameters can be specified on this property. Conformance: This property can be specified in recurring "VEVENT", "VTODO", and "VJOURNAL" calendar components as well as in the "STANDARD" and "DAYLIGHT" sub-components of the "VTIMEZONE" calendar component.
//
// Description
// The exception dates, if specified, are used in computing the recurrence set. The recurrence set is the complete set of recurrence instances for a calendar component. The recurrence set is generated by considering the initial "DTSTART" property along with the "RRULE", "RDATE", and "EXDATE" properties contained within the recurring component. The "DTSTART" property defines the first instance in the recurrence set. The "DTSTART" property value SHOULD match the pattern of the recurrence rule, if specified. The recurrence set generated with a "DTSTART" property value that doesn't match the pattern of the rule is undefined. The final recurrence set is generated by gathering all of the start DATE-TIME values generated by any of the specified "RRULE" and "RDATE" properties, and then excluding any start DATE-TIME values specified by "EXDATE" properties. This implies that start DATE-TIME values specified by "EXDATE" properties take precedence over those specified by inclusion properties (i.e., "RDATE" and "RRULE"). When duplicate instances are generated by the "RRULE" and "RDATE" properties, only one recurrence is considered. Duplicate instances are ignored.
//
// The "EXDATE" property can be used to exclude the value specified in "DTSTART". However, in such cases, the original "DTSTART" date MUST still be maintained by the calendaring and scheduling system because the original "DTSTART" value has inherent usage dependencies by other properties such as the "RECURRENCE-ID".
//
// Format Definition
// This property is defined by the following notation:
//
//  exdate     = "EXDATE" exdtparam ":" exdtval *("," exdtval) CRLF
//  exdtparam  = *(
//             ;
//             ; The following are OPTIONAL,
//             ; but MUST NOT occur more than once.
//             ;
//             (";" "VALUE" "=" ("DATE-TIME" / "DATE")) /
//             ;
//             (";" tzidparam) /
//             ;
//             ; The following is OPTIONAL,
//             ; and MAY occur more than once.
//             ;
//             (";" other-param)
//             ;
//             )
//  exdtval    = date-time / date
//  ;Value MUST match value type
// Example
// The following is an example of this property
//
//  EXDATE:19960402T010000Z,19960403T010000Z,19960404T010000Z

class ExceptionDateTimes {}
