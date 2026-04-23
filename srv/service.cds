using {cap_pg} from '../db/schema';

@path: 'Employee'
service EmployeeService {

    entity Employee @(restrict: [
        {
            grant: ['READ'],
            to:    ['EmployeeViewer']
        },
        {
            grant: ['*'],
            to:    ['EmployeeAdmin']
        }
    ]) as projection on cap_pg.Employee;

    annotate Employee with @odata.draft.enabled;

    entity Department @(restrict: [
        {
            grant: ['READ'],
            to:    ['EmployeeViewer']
        },
        {
            grant: ['*'],
            to:    ['EmployeeAdmin']
        }
    ]) as projection on cap_pg.Department;

    entity Position @(restrict: [
        {
            grant: ['READ'],
            to:    ['EmployeeViewer']
        },
        {
            grant: ['*'],
            to:    ['EmployeeAdmin']
        }
    ]) as projection on cap_pg.Position;
}