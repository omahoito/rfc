### ODA1 ActivityDefinition - ODA2 CarePlan.activity mapping

| AcivityDefinition        | CarePlan.activity              |  Description                                              |
|--------------------------|:-------------------------------|:----------------------------------------------------------|
|  *.description (0..1)    |  *.detail.description (0..1)   | Extra info describing activity to perform                 |
|  *.code (1..1)           |  *.detail.code (1..1)          | Detail type of activity                                   |
|  *.topic (0..*)          |  *.detail.reasonCode (0..*)    | Why activity should be done or why activity was prohibited|
|  *                       |  *.detail.definition (1..1)    | Activity definition (as a whole)                          |

