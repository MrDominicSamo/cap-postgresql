using EmployeeService as service from '../../srv/service';
annotate service.Employee with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : employeeId,
                Label : '{i18n>EmployeeId}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>FullName}',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Salary}',
                Value : salary,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Email}',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Phone}',
                Value : phone,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>HireDate}',
                Value : hireDate,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>RetirementDate}',
                Value : retirementDate,
            },
            {
                $Type : 'UI.DataField',
                Value : departmentCode,
            },
            {
                $Type : 'UI.DataField',
                Value : positionCode,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Changes',
            ID : 'Changes',
            Target : '@UI.FieldGroup#Changes',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>FullName}',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Value : departmentCode,
            Label : '{i18n>DepartmentCode}',
        },
        {
            $Type : 'UI.DataField',
            Value : positionCode,
            Label : '{i18n>PositionCode}',
        },
        {
            $Type : 'UI.DataField',
            Value : email,
            Label : '{i18n>Email}',
        },
        {
            $Type : 'UI.DataField',
            Value : phone,
            Label : '{i18n>Phone}',
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        TypeName : '',
        TypeNamePlural : '',
        TypeImageUrl : 'sap-icon://employee',
    },
    UI.SelectionFields : [
        departmentCode,
        positionCode,
        employeeId,
        name,
        retirementDate,
        hireDate,
    ],
    UI.PresentationVariant #vh_Employee_department : {
        $Type : 'UI.PresentationVariantType',
        SortOrder : [
            {
                $Type : 'Common.SortOrderType',
                Property : department,
                Descending : false,
            },
        ],
    },
    UI.PresentationVariant #vh_Employee_department1 : {
        $Type : 'UI.PresentationVariantType',
        SortOrder : [
            {
                $Type : 'Common.SortOrderType',
                Property : department,
                Descending : false,
            },
        ],
    },
    UI.PresentationVariant #vh_Employee_name : {
        $Type : 'UI.PresentationVariantType',
        SortOrder : [
            {
                $Type : 'Common.SortOrderType',
                Property : name,
                Descending : false,
            },
        ],
    },
    UI.FieldGroup #Changes : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
        ],
    },
);

annotate service.Employee with {
    name @(
        Common.Label : '{i18n>FullName}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Employee',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'departmentCode',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'positionCode',
                },
            ],
            Label : 'Full Name',
            PresentationVariantQualifier : 'vh_Employee_name',
        },
        Common.ValueListWithFixedValues : false,
    )
};

annotate service.Department with @(
    UI.PresentationVariant #vh_Employee_department : {
        $Type : 'UI.PresentationVariantType',
        SortOrder : [
            {
                $Type : 'Common.SortOrderType',
                Property : code,
                Descending : false,
            },
        ],
    },
    UI.PresentationVariant #vh_Employee_departmentCode : {
        $Type : 'UI.PresentationVariantType',
        SortOrder : [
            {
                $Type : 'Common.SortOrderType',
                Property : code,
                Descending : false,
            },
        ],
    },
);

annotate service.Position with @(
    UI.PresentationVariant #vh_Employee_position : {
        $Type : 'UI.PresentationVariantType',
        SortOrder : [
            {
                $Type : 'Common.SortOrderType',
                Property : title,
                Descending : false,
            },
        ],
    },
    UI.PresentationVariant #vh_Employee_positionCode : {
        $Type : 'UI.PresentationVariantType',
        SortOrder : [
            {
                $Type : 'Common.SortOrderType',
                Property : code,
                Descending : false,
            },
        ],
    },
);

annotate service.Department with {
    name @Common.Text : code
};

annotate service.Employee with {
    departmentCode @(
        Common.Label : '{i18n>DepartmentCode}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Department',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : departmentCode,
                    ValueListProperty : 'code',
                },
            ],
            Label : 'Department',
            PresentationVariantQualifier : 'vh_Employee_departmentCode',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Employee with {
    employeeId @Common.Label : '{i18n>EmployeeId}'
};

annotate service.Employee with {
    positionCode @(
        Common.Label : '{i18n>PositionCode}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Position',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : positionCode,
                    ValueListProperty : 'code',
                },
            ],
            Label : 'Position',
            PresentationVariantQualifier : 'vh_Employee_positionCode',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.Employee with {
    retirementDate @Common.Label : '{i18n>RetirementDate}'
};

annotate service.Employee with {
    hireDate @(
        Common.Label : '{i18n>HireDate}',
        )
};

annotate service.Position with {
    code @Common.Text : title
};

