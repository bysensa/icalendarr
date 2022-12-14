// Component Name
// VTODO
//
// Purpose
// Provide a grouping of calendar properties that describe a to-do.
//
// Format Definition: A "VTODO" calendar component is defined by the following notation:
//
//  todoc      = "BEGIN" ":" "VTODO" CRLF
//               todoprop *alarmc
//               "END" ":" "VTODO" CRLF
//  todoprop   = *(
//             ;
//             ; The following are REQUIRED,
//             ; but MUST NOT occur more than once.
//             ;
//             dtstamp / uid /
//             ;
//             ; The following are OPTIONAL,
//             ; but MUST NOT occur more than once.
//             ;
//             class / completed / created / description /
//             dtstart / geo / last-mod / location / organizer /
//             percent / priority / recurid / seq / status /
//             summary / url /
//             ;
//             ; The following is OPTIONAL,
//             ; but SHOULD NOT occur more than once.
//             ;
//             rrule /
//             ;
//             ; Either 'due' or 'duration' MAY appear in
//             ; a 'todoprop', but 'due' and 'duration'
//             ; MUST NOT occur in the same 'todoprop'.
//             ; If 'duration' appear in a 'todoprop',
//             ; then 'dtstart' MUST also appear in
//             ; the same 'todoprop'.
//             ;
//             due / duration /
//             ;
//             ; The following are OPTIONAL,
//             ; and MAY occur more than once.
//             ;
//             attach / attendee / categories / comment / contact /
//             exdate / rstatus / related / resources /
//             rdate / x-prop / iana-prop
//             ;
//             )
// Description
// A "VTODO" calendar component is a grouping of component properties and possibly "VALARM" calendar components that represent an action-item or assignment. For example, it can be used to represent an item of work assigned to an individual; such as "turn in travel expense today".
//
// The "VTODO" calendar component cannot be nested within another calendar component. However, "VTODO" calendar components can be related to each other or to a "VEVENT" or to a "VJOURNAL" calendar component with the "RELATED-TO" property.
//
// A "VTODO" calendar component without the "DTSTART" and "DUE" (or "DURATION") properties specifies a to-do that will be associated with each successive calendar date, until it is completed.
//
// Examples
// The following is an example of a "VTODO" calendar component that needs to be completed before May 1st, 2007. On midnight May 1st, 2007 this to-do would be considered overdue.
//
//  BEGIN:VTODO
//  UID:20070313T123432Z-456553@example.com
//  DTSTAMP:20070313T123432Z
//  DUE;VALUE=DATE:20070501
//  SUMMARY:Submit Quebec Income Tax Return for 2006
//  CLASS:CONFIDENTIAL
//  CATEGORIES:FAMILY,FINANCE
//  STATUS:NEEDS-ACTION
//  END:VTODO
// The following is an example of a "VTODO" calendar component that was due before 1:00 P.M. UTC on July 9th, 2007 and was completed on July 7th, 2007 at 10:00 A.M. UTC.
//
//  BEGIN:VTODO
//  UID:20070514T103211Z-123404@example.com
//  DTSTAMP:20070514T103211Z
//  DTSTART:20070514T110000Z
//  DUE:20070709T130000Z
//  COMPLETED:20070707T100000Z
//  SUMMARY:Submit Revised Internet-Draft
//  PRIORITY:1
//  STATUS:NEEDS-ACTION
//  END:VTODO

class ToDo {}
