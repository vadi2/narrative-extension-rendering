Profile: TestAppointment
Parent: Appointment
Id: appointment
Title: "Appointment"
* extension contains AfternoonDate1 named afternoonDate1 0..1 MS
* extension contains AfternoonDate2 named afternoonDate2 0..1 MS
* extension contains MorningDate1 named morningDate1 0..1 MS


Extension: AfternoonDate1
Id: afternoon-date-1
Title: "Extension: afternoon date 1"
* value[x] only dateTime

Extension: AfternoonDate2
Id: afternoon-date-2
Title: "Extension: afternoon date 2"
* value[x] only dateTime

Extension: MorningDate1
Id: morning-date-1
Title: "Extension: morning date 1"
* value[x] only dateTime


Instance: appointment
InstanceOf: TestAppointment
Usage: #example
* extension[afternoonDate1].valueDateTime = "2020-02-07T13:28:17+02:00"
* extension[afternoonDate2].valueDateTime = "2020-02-07T20:12:42+02:00"
* extension[morningDate1].valueDateTime = "2020-02-07T04:12:42+02:00"
* status = #booked
* participant 
  * actor = Reference(example-patient)
  * required = #required
  * status = #accepted
