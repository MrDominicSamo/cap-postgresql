namespace cap_pg;

using { cuid, managed } from '@sap/cds/common';

entity Department : cuid {
  code : String(50);
  name : String(255);
}

entity Position : cuid {
  code  : String(50);
  title : String(100);
}

entity Employee : cuid, managed {
  employeeId     : String(10);
  name           : String(100);
  departmentCode     : String(255);
  positionCode       : String(100);
  salary         : Decimal(15,2);
  email          : String(100);
  phone          : String(20);
  hireDate       : Date;
  retirementDate : Date;
}