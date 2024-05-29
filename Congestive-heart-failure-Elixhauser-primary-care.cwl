cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  clinic-congestive-heart-failure-elixhauser-primary-care---primary:
    run: clinic-congestive-heart-failure-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  congestive-heart-failure-elixhauser-primary-care---primary:
    run: congestive-heart-failure-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: clinic-congestive-heart-failure-elixhauser-primary-care---primary/output
  ventricular-congestive-heart-failure-elixhauser-primary-care---primary:
    run: ventricular-congestive-heart-failure-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care---primary/output
  congestive-heart-failure-elixhauser-primary-care-programme---primary:
    run: congestive-heart-failure-elixhauser-primary-care-programme---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ventricular-congestive-heart-failure-elixhauser-primary-care---primary/output
  congestive-heart-failure-elixhauser-primary-care-review---primary:
    run: congestive-heart-failure-elixhauser-primary-care-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-programme---primary/output
  congestive-heart-failure-elixhauser-primary-care-shows---primary:
    run: congestive-heart-failure-elixhauser-primary-care-shows---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-review---primary/output
  congestive-heart-failure-elixhauser-primary-care-decompensated---primary:
    run: congestive-heart-failure-elixhauser-primary-care-decompensated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-shows---primary/output
  cardiomyopathy-congestive-heart-failure-elixhauser-primary-care---primary:
    run: cardiomyopathy-congestive-heart-failure-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-decompensated---primary/output
  heart---primary:
    run: heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: cardiomyopathy-congestive-heart-failure-elixhauser-primary-care---primary/output
  right-congestive-heart-failure-elixhauser-primary-care---primary:
    run: right-congestive-heart-failure-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: heart---primary/output
  congestive-heart-failure-elixhauser-primary-care-complication---primary:
    run: congestive-heart-failure-elixhauser-primary-care-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: right-congestive-heart-failure-elixhauser-primary-care---primary/output
  congestive-heart-failure-elixhauser-primary-care-nurse---primary:
    run: congestive-heart-failure-elixhauser-primary-care-nurse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-complication---primary/output
  diastolic-congestive-heart-failure-elixhauser-primary-care---primary:
    run: diastolic-congestive-heart-failure-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-nurse---primary/output
  congestive-heart-failure-elixhauser-primary-care-invite---primary:
    run: congestive-heart-failure-elixhauser-primary-care-invite---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: diastolic-congestive-heart-failure-elixhauser-primary-care---primary/output
  congestive-heart-failure-elixhauser-primary-care-letter---primary:
    run: congestive-heart-failure-elixhauser-primary-care-letter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-invite---primary/output
  congestive-heart-failure-elixhauser-primary-care-function---primary:
    run: congestive-heart-failure-elixhauser-primary-care-function---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-letter---primary/output
  congestive-heart-failure-elixhauser-primary-care-education---primary:
    run: congestive-heart-failure-elixhauser-primary-care-education---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-function---primary/output
  congestive-heart-failure-elixhauser-primary-care-referred---primary:
    run: congestive-heart-failure-elixhauser-primary-care-referred---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-education---primary/output
  acute-congestive-heart-failure-elixhauser-primary-care---primary:
    run: acute-congestive-heart-failure-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-referred---primary/output
  congestive-heart-failure-elixhauser-primary-care-excepted---primary:
    run: congestive-heart-failure-elixhauser-primary-care-excepted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: acute-congestive-heart-failure-elixhauser-primary-care---primary/output
  congestive-heart-failure-elixhauser-primary-care-assoc---primary:
    run: congestive-heart-failure-elixhauser-primary-care-assoc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-excepted---primary/output
  congestive-heart-failure-elixhauser-primary-care-cardiac---primary:
    run: congestive-heart-failure-elixhauser-primary-care-cardiac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-assoc---primary/output
  patient-congestive-heart-failure-elixhauser-primary-care---primary:
    run: patient-congestive-heart-failure-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-cardiac---primary/output
  congestive-heart-failure-elixhauser-primary-care-fraction---primary:
    run: congestive-heart-failure-elixhauser-primary-care-fraction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: patient-congestive-heart-failure-elixhauser-primary-care---primary/output
  congestive-heart-failure-elixhauser-primary-care-declined---primary:
    run: congestive-heart-failure-elixhauser-primary-care-declined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-fraction---primary/output
  congestive-heart-failure-elixhauser-primary-care-asthma---primary:
    run: congestive-heart-failure-elixhauser-primary-care-asthma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-declined---primary/output
  congestive-heart-failure-elixhauser-primary-care-cardiorespiratory---primary:
    run: congestive-heart-failure-elixhauser-primary-care-cardiorespiratory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-asthma---primary/output
  systolic-congestive-heart-failure-elixhauser-primary-care---primary:
    run: systolic-congestive-heart-failure-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-cardiorespiratory---primary/output
  congestive-heart-failure-elixhauser-primary-care-discharge---primary:
    run: congestive-heart-failure-elixhauser-primary-care-discharge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: systolic-congestive-heart-failure-elixhauser-primary-care---primary/output
  congestive-heart-failure-elixhauser-primary-care-indicator---primary:
    run: congestive-heart-failure-elixhauser-primary-care-indicator---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-discharge---primary/output
  congestive-heart-failure-elixhauser-primary-care-practice---primary:
    run: congestive-heart-failure-elixhauser-primary-care-practice---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-indicator---primary/output
  congestive-heart-failure-elixhauser-primary-care-group---primary:
    run: congestive-heart-failure-elixhauser-primary-care-group---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-practice---primary/output
  congestive-heart-failure-elixhauser-primary-care-monitoring---primary:
    run: congestive-heart-failure-elixhauser-primary-care-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-group---primary/output
  congestive-heart-failure-elixhauser-primary-care-lvf---primary:
    run: congestive-heart-failure-elixhauser-primary-care-lvf---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-monitoring---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: congestive-heart-failure-elixhauser-primary-care-lvf---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
