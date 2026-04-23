sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"ems/test/integration/pages/EmployeeList",
	"ems/test/integration/pages/EmployeeObjectPage"
], function (JourneyRunner, EmployeeList, EmployeeObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('ems') + '/test/flp.html#app-preview',
        pages: {
			onTheEmployeeList: EmployeeList,
			onTheEmployeeObjectPage: EmployeeObjectPage
        },
        async: true
    });

    return runner;
});

