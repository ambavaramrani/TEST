{
	"contents": {
		"6717be74-55f7-4ab4-b191-48b984ca748d": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "wfnamespace.myworkflow",
			"subject": "MyWorkflow",
			"customAttributes": [],
			"name": "MyWorkflow",
			"documentation": "building of WF",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"866c22a7-5369-4487-ab2d-6e7fd6e5281b": {
					"name": "UserTask4"
				},
				"617345d5-8cbb-4d9b-b20e-7665259c5081": {
					"name": "ExclusiveGateway3"
				},
				"6cefc588-d37d-414d-81e1-402e3ceb0a52": {
					"name": "ScriptTask3"
				},
				"8cec5473-1b38-40b4-a4b6-68c04b3e2604": {
					"name": "ScriptTask4"
				},
				"a104c82a-353e-46fc-92a4-cfc345050a10": {
					"name": "ServiceTask1"
				}
			},
			"sequenceFlows": {
				"c58784a9-6a70-4354-9196-d9c349ed2669": {
					"name": "SequenceFlow11"
				},
				"cec247fa-39a9-4bb8-9427-2464ddc0edb8": {
					"name": "SequenceFlow12"
				},
				"7e09fbcd-5161-4be0-a155-e6f0ee49646d": {
					"name": "Approve"
				},
				"0390051f-9b08-4a69-9be1-6675a2fe873f": {
					"name": "Reject"
				},
				"d73c486d-6da1-4cd5-8cef-bce8b3b7610b": {
					"name": "SequenceFlow15"
				},
				"7895b4bf-f4b9-42de-9b75-cee6a05a509d": {
					"name": "SequenceFlow16"
				},
				"7d67bc9a-f907-4ac3-bb02-439c971825c5": {
					"name": "SequenceFlow17"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"866c22a7-5369-4487-ab2d-6e7fd6e5281b": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Usertask",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "User",
			"recipientGroups": "Group",
			"formReference": "/forms/MyWorkflow/sales.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "material"
			}, {
				"key": "formRevision",
				"value": "draft"
			}],
			"id": "usertask4",
			"name": "UserTask4"
		},
		"617345d5-8cbb-4d9b-b20e-7665259c5081": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "ExclusiveGateway3",
			"default": "0390051f-9b08-4a69-9be1-6675a2fe873f"
		},
		"6cefc588-d37d-414d-81e1-402e3ceb0a52": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/Approve.js",
			"id": "scripttask3",
			"name": "ScriptTask3"
		},
		"8cec5473-1b38-40b4-a4b6-68c04b3e2604": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/Reject.js",
			"id": "scripttask4",
			"name": "ScriptTask4"
		},
		"a104c82a-353e-46fc-92a4-cfc345050a10": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BTP_WF1",
			"destinationSource": "consumer",
			"path": "/wfpost",
			"httpMethod": "GET",
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"c58784a9-6a70-4354-9196-d9c349ed2669": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "SequenceFlow11",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "866c22a7-5369-4487-ab2d-6e7fd6e5281b"
		},
		"cec247fa-39a9-4bb8-9427-2464ddc0edb8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow12",
			"name": "SequenceFlow12",
			"sourceRef": "866c22a7-5369-4487-ab2d-6e7fd6e5281b",
			"targetRef": "617345d5-8cbb-4d9b-b20e-7665259c5081"
		},
		"7e09fbcd-5161-4be0-a155-e6f0ee49646d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask4.last.decision==\"accept\"}",
			"id": "sequenceflow13",
			"name": "Approve",
			"sourceRef": "617345d5-8cbb-4d9b-b20e-7665259c5081",
			"targetRef": "6cefc588-d37d-414d-81e1-402e3ceb0a52"
		},
		"0390051f-9b08-4a69-9be1-6675a2fe873f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "Reject",
			"sourceRef": "617345d5-8cbb-4d9b-b20e-7665259c5081",
			"targetRef": "8cec5473-1b38-40b4-a4b6-68c04b3e2604"
		},
		"d73c486d-6da1-4cd5-8cef-bce8b3b7610b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "6cefc588-d37d-414d-81e1-402e3ceb0a52",
			"targetRef": "a104c82a-353e-46fc-92a4-cfc345050a10"
		},
		"7895b4bf-f4b9-42de-9b75-cee6a05a509d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "8cec5473-1b38-40b4-a4b6-68c04b3e2604",
			"targetRef": "a104c82a-353e-46fc-92a4-cfc345050a10"
		},
		"7d67bc9a-f907-4ac3-bb02-439c971825c5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "a104c82a-353e-46fc-92a4-cfc345050a10",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"3d390dec-5ffe-4eda-b287-648c56869a41": {},
				"c978e882-7839-4621-9c1e-1abbed3b10a9": {},
				"f21fedfc-c968-48a1-a542-e504ba671f54": {},
				"06730aad-2575-4e7e-b2e8-22af25db3f54": {},
				"8af0dd43-70d3-4512-8638-215cd3f3afc8": {},
				"7ac6eaeb-bcd1-480f-8914-3bd597f26008": {},
				"6dde9f69-28b8-4214-a748-c36ff377c9f2": {},
				"9927675c-eb16-4abe-b7ca-65fe042bdb57": {},
				"5b18abec-2cea-47d4-86fb-b7f4ea7afae1": {},
				"0a8bb8f6-cb32-4791-9330-ecab0efdf23d": {},
				"9297426c-42b5-45d6-8906-67d2db95cdbb": {},
				"ffb39bd4-f742-45f3-a70a-4cd6543c5fe6": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 31,
			"y": 133,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 693,
			"y": 132,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"3d390dec-5ffe-4eda-b287-648c56869a41": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 129,
			"y": 115,
			"width": 100,
			"height": 60,
			"object": "866c22a7-5369-4487-ab2d-6e7fd6e5281b"
		},
		"c978e882-7839-4621-9c1e-1abbed3b10a9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "47,147 129.5,147",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "3d390dec-5ffe-4eda-b287-648c56869a41",
			"object": "c58784a9-6a70-4354-9196-d9c349ed2669"
		},
		"f21fedfc-c968-48a1-a542-e504ba671f54": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 291,
			"y": 120,
			"object": "617345d5-8cbb-4d9b-b20e-7665259c5081"
		},
		"06730aad-2575-4e7e-b2e8-22af25db3f54": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "179,143 299,143",
			"sourceSymbol": "3d390dec-5ffe-4eda-b287-648c56869a41",
			"targetSymbol": "f21fedfc-c968-48a1-a542-e504ba671f54",
			"object": "cec247fa-39a9-4bb8-9427-2464ddc0edb8"
		},
		"8af0dd43-70d3-4512-8638-215cd3f3afc8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 360,
			"y": 40,
			"width": 100,
			"height": 60,
			"object": "6cefc588-d37d-414d-81e1-402e3ceb0a52"
		},
		"7ac6eaeb-bcd1-480f-8914-3bd597f26008": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "312,141 312,70 360.5,70",
			"sourceSymbol": "f21fedfc-c968-48a1-a542-e504ba671f54",
			"targetSymbol": "8af0dd43-70d3-4512-8638-215cd3f3afc8",
			"object": "7e09fbcd-5161-4be0-a155-e6f0ee49646d"
		},
		"6dde9f69-28b8-4214-a748-c36ff377c9f2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 360,
			"y": 198,
			"width": 100,
			"height": 60,
			"object": "8cec5473-1b38-40b4-a4b6-68c04b3e2604"
		},
		"9927675c-eb16-4abe-b7ca-65fe042bdb57": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "312,141 312,228 360.5,228",
			"sourceSymbol": "f21fedfc-c968-48a1-a542-e504ba671f54",
			"targetSymbol": "6dde9f69-28b8-4214-a748-c36ff377c9f2",
			"object": "0390051f-9b08-4a69-9be1-6675a2fe873f"
		},
		"5b18abec-2cea-47d4-86fb-b7f4ea7afae1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 515,
			"y": 120,
			"width": 100,
			"height": 60,
			"object": "a104c82a-353e-46fc-92a4-cfc345050a10"
		},
		"0a8bb8f6-cb32-4791-9330-ecab0efdf23d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "410,70 487.75,70 487.75,150 515.5,150",
			"sourceSymbol": "8af0dd43-70d3-4512-8638-215cd3f3afc8",
			"targetSymbol": "5b18abec-2cea-47d4-86fb-b7f4ea7afae1",
			"object": "d73c486d-6da1-4cd5-8cef-bce8b3b7610b"
		},
		"9297426c-42b5-45d6-8906-67d2db95cdbb": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "410,228 487.75,228 487.75,150 515.5,150",
			"sourceSymbol": "6dde9f69-28b8-4214-a748-c36ff377c9f2",
			"targetSymbol": "5b18abec-2cea-47d4-86fb-b7f4ea7afae1",
			"object": "7895b4bf-f4b9-42de-9b75-cee6a05a509d"
		},
		"ffb39bd4-f742-45f3-a70a-4cd6543c5fe6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "565,149.75 693.5,149.75",
			"sourceSymbol": "5b18abec-2cea-47d4-86fb-b7f4ea7afae1",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "7d67bc9a-f907-4ac3-bb02-439c971825c5"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 17,
			"startevent": 1,
			"endevent": 2,
			"usertask": 6,
			"servicetask": 1,
			"scripttask": 5,
			"exclusivegateway": 3
		}
	}
}