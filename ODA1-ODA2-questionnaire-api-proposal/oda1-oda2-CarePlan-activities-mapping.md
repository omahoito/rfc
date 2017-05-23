### ODA1 ActivityDefinition - ODA2 CarePlan.activity mapping

| AcivityDefinition   | CarePlan.activity       | Cardinality   |  description                                               |
|---------------------|:------------------------|:------------- |:-----------------------------------------------------------|
|      .description   |  .detail.description     |   0..1       | Extra info describing activity to perform                  |
|      .code          |  .detail.code            |   1..1       | Detail type of activity                                    |
|      .topic         |  .detail.reasonCode      |   0..*       | Why activity should be done or why activity was prohibited |
|      .*             |  .detail.definition      |   1..1       | Activity definition                                        |