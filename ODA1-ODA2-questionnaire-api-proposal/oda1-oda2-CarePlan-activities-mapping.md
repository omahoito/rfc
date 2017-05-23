### ODA1 ActivityDefinition - ODA2 CarePlan.activity mapping

| Cardinality | AcivityDefinition   | CarePlan.activity     |  Description                                               |
|-------------|:--------------------|:----------------------|:-----------------------------------------------------------|
|  0..1       |   .description      |  .detail.description  | Extra info describing activity to perform                  |
|  1..1       |   .code             |  .detail.code         | Detail type of activity                                    |
|  0..*       |   .topic            |  .detail.reasonCode   | Why activity should be done or why activity was prohibited |
|  1..1       |   .*                |  .detail.definition   | Activity definition                                        |