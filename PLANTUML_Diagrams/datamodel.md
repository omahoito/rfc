@startuml
header
Deployment diagram generated with plantuml.com to github.com/omahoito. CC-BY-4.0 City of Espoo 2017. To change the picture, make a pull request with changes to deployment.md and README.md.
endheader

object Person
object Patient
object Appointment
object Communication
object Device
object CarePlan
object careTeam
object Goal

Person -- Patient
Person -- Device
Person -- Appointment
CarePlan -- Appointment
CarePlan -- Goal
CarePlan -- careTeam
CarePlan -- Communication
CarePlan -- Patient
@enduml
