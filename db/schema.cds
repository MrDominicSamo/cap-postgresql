namespace cap_pg;

using { cuid, managed } from '@sap/cds/common';

type Department : String enum {
  SALES = 'SALES';
  MARKETING = 'MARKETING';
  FINANCE = 'FINANCE';
  PROCUREMENT = 'PROCUREMENT';
  LEGAL = 'LEGAL';
  INFORMATION_SYSTEMS = 'INFORMATION SYSTEMS';
  INNOVATION = 'INNOVATION';
  MANUFACTURING = 'MANUFACTURING';
  RESEARCH_AND_DEVELOPMENT = 'RESEARCH AND DEVELOPMENT';
  ADMINISTRATION = 'ADMINISTRATION';
  OPERATIONS = 'OPERATIONS';
};

entity Employee : cuid, managed {
  employeeId : String(10);
  name : String(100);
  department : Department;
  position : String(100);
  salary : Decimal(15,2);
  email : String(100);
  phone : String(20);
  hireDate : Date;
  retirementDate : Date;
}