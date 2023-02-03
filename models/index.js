// @ts-check
import { initSchema } from '@aws-amplify/datastore';
import { schema } from './schema';



const { SuperAdmin, Admin, Educarer, Guardian, Student, Educator, Meeting, Attendee, GuardianStudent, Response } = initSchema(schema);

export {
  SuperAdmin,
  Admin,
  Educarer,
  Guardian,
  Student,
  Educator,
  Meeting,
  Attendee,
  GuardianStudent,
  Response
};