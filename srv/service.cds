using {cap_pg} from '../db/schema';

@path: 'Employee'
service EmployeeService {
    entity Employee as projection on cap_pg.Employee;

    annotate Employee with @odata.draft.enabled;
}
