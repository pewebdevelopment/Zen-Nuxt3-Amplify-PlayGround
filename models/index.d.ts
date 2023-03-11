import { ModelInit, MutableModel, __modelMeta__, ManagedIdentifier, CustomIdentifier } from "@aws-amplify/datastore";
// @ts-ignore
import { LazyLoading, LazyLoadingDisabled, AsyncCollection, AsyncItem } from "@aws-amplify/datastore";



type EagerResponse = {
  readonly statusCode: string;
  readonly headers?: string | null;
  readonly body?: string | null;
  readonly isBase64Encoded?: string | null;
}

type LazyResponse = {
  readonly statusCode: string;
  readonly headers?: string | null;
  readonly body?: string | null;
  readonly isBase64Encoded?: string | null;
}

export declare type Response = LazyLoading extends LazyLoadingDisabled ? EagerResponse : LazyResponse

export declare const Response: (new (init: ModelInit<Response>) => Response)

type EagerSuperAdmin = {
  readonly [__modelMeta__]: {
    identifier: ManagedIdentifier<SuperAdmin, 'id'>;
  };
  readonly id: string;
  readonly firstName?: string | null;
  readonly middleName?: string | null;
  readonly lastName?: string | null;
  readonly email?: string | null;
  readonly phone?: string | null;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
  readonly isArchived?: boolean | null;
}

type LazySuperAdmin = {
  readonly [__modelMeta__]: {
    identifier: ManagedIdentifier<SuperAdmin, 'id'>;
  };
  readonly id: string;
  readonly firstName?: string | null;
  readonly middleName?: string | null;
  readonly lastName?: string | null;
  readonly email?: string | null;
  readonly phone?: string | null;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
  readonly isArchived?: boolean | null;
}

export declare type SuperAdmin = LazyLoading extends LazyLoadingDisabled ? EagerSuperAdmin : LazySuperAdmin

export declare const SuperAdmin: (new (init: ModelInit<SuperAdmin>) => SuperAdmin) & {
  copyOf(source: SuperAdmin, mutator: (draft: MutableModel<SuperAdmin>) => MutableModel<SuperAdmin> | void): SuperAdmin;
}

type EagerAdmin = {
  readonly [__modelMeta__]: {
    identifier: ManagedIdentifier<Admin, 'id'>;
  };
  readonly id: string;
  readonly firstName?: string | null;
  readonly middleName?: string | null;
  readonly lastName?: string | null;
  readonly email?: string | null;
  readonly phone?: string | null;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
  readonly isArchived?: boolean | null;
}

type LazyAdmin = {
  readonly [__modelMeta__]: {
    identifier: ManagedIdentifier<Admin, 'id'>;
  };
  readonly id: string;
  readonly firstName?: string | null;
  readonly middleName?: string | null;
  readonly lastName?: string | null;
  readonly email?: string | null;
  readonly phone?: string | null;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
  readonly isArchived?: boolean | null;
}

export declare type Admin = LazyLoading extends LazyLoadingDisabled ? EagerAdmin : LazyAdmin

export declare const Admin: (new (init: ModelInit<Admin>) => Admin) & {
  copyOf(source: Admin, mutator: (draft: MutableModel<Admin>) => MutableModel<Admin> | void): Admin;
}

type EagerEducarer = {
  readonly [__modelMeta__]: {
    identifier: ManagedIdentifier<Educarer, 'id'>;
  };
  readonly id: string;
  readonly firstName?: string | null;
  readonly middleName?: string | null;
  readonly lastName?: string | null;
  readonly email?: string | null;
  readonly phone?: string | null;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
  readonly isArchived?: boolean | null;
}

type LazyEducarer = {
  readonly [__modelMeta__]: {
    identifier: ManagedIdentifier<Educarer, 'id'>;
  };
  readonly id: string;
  readonly firstName?: string | null;
  readonly middleName?: string | null;
  readonly lastName?: string | null;
  readonly email?: string | null;
  readonly phone?: string | null;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
  readonly isArchived?: boolean | null;
}

export declare type Educarer = LazyLoading extends LazyLoadingDisabled ? EagerEducarer : LazyEducarer

export declare const Educarer: (new (init: ModelInit<Educarer>) => Educarer) & {
  copyOf(source: Educarer, mutator: (draft: MutableModel<Educarer>) => MutableModel<Educarer> | void): Educarer;
}

type EagerGuardian = {
  readonly [__modelMeta__]: {
    identifier: ManagedIdentifier<Guardian, 'id'>;
  };
  readonly id: string;
  readonly firstName?: string | null;
  readonly middleName?: string | null;
  readonly lastName?: string | null;
  readonly email?: string | null;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
  readonly phone?: string | null;
  readonly isArchived?: boolean | null;
  readonly Wardens?: (GuardianStudent | null)[] | null;
}

type LazyGuardian = {
  readonly [__modelMeta__]: {
    identifier: ManagedIdentifier<Guardian, 'id'>;
  };
  readonly id: string;
  readonly firstName?: string | null;
  readonly middleName?: string | null;
  readonly lastName?: string | null;
  readonly email?: string | null;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
  readonly phone?: string | null;
  readonly isArchived?: boolean | null;
  readonly Wardens: AsyncCollection<GuardianStudent>;
}

export declare type Guardian = LazyLoading extends LazyLoadingDisabled ? EagerGuardian : LazyGuardian

export declare const Guardian: (new (init: ModelInit<Guardian>) => Guardian) & {
  copyOf(source: Guardian, mutator: (draft: MutableModel<Guardian>) => MutableModel<Guardian> | void): Guardian;
}

type EagerEducator = {
  readonly [__modelMeta__]: {
    identifier: ManagedIdentifier<Educator, 'id'>;
  };
  readonly id: string;
  readonly firstNam?: string | null;
  readonly lastName?: string | null;
  readonly email?: string | null;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
  readonly middleName?: string | null;
  readonly phone?: string | null;
  readonly isArchive?: boolean | null;
  readonly subjects?: string | null;
}

type LazyEducator = {
  readonly [__modelMeta__]: {
    identifier: ManagedIdentifier<Educator, 'id'>;
  };
  readonly id: string;
  readonly firstNam?: string | null;
  readonly lastName?: string | null;
  readonly email?: string | null;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
  readonly middleName?: string | null;
  readonly phone?: string | null;
  readonly isArchive?: boolean | null;
  readonly subjects?: string | null;
}

export declare type Educator = LazyLoading extends LazyLoadingDisabled ? EagerEducator : LazyEducator

export declare const Educator: (new (init: ModelInit<Educator>) => Educator) & {
  copyOf(source: Educator, mutator: (draft: MutableModel<Educator>) => MutableModel<Educator> | void): Educator;
}

type EagerStudent = {
  readonly [__modelMeta__]: {
    identifier: ManagedIdentifier<Student, 'id'>;
  };
  readonly id: string;
  readonly firstName: string;
  readonly middleName?: string | null;
  readonly lastName: string;
  readonly email: string;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
  readonly phone?: string | null;
  readonly isArchived?: boolean | null;
  readonly guardians?: (GuardianStudent | null)[] | null;
}

type LazyStudent = {
  readonly [__modelMeta__]: {
    identifier: ManagedIdentifier<Student, 'id'>;
  };
  readonly id: string;
  readonly firstName: string;
  readonly middleName?: string | null;
  readonly lastName: string;
  readonly email: string;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
  readonly phone?: string | null;
  readonly isArchived?: boolean | null;
  readonly guardians: AsyncCollection<GuardianStudent>;
}

export declare type Student = LazyLoading extends LazyLoadingDisabled ? EagerStudent : LazyStudent

export declare const Student: (new (init: ModelInit<Student>) => Student) & {
  copyOf(source: Student, mutator: (draft: MutableModel<Student>) => MutableModel<Student> | void): Student;
}

type EagerMeeting = {
  readonly [__modelMeta__]: {
    identifier: CustomIdentifier<Meeting, 'title'>;
    readOnlyFields: 'createdAt' | 'updatedAt';
  };
  readonly meetingId: string;
  readonly title: string;
  readonly data: string;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
}

type LazyMeeting = {
  readonly [__modelMeta__]: {
    identifier: CustomIdentifier<Meeting, 'title'>;
    readOnlyFields: 'createdAt' | 'updatedAt';
  };
  readonly meetingId: string;
  readonly title: string;
  readonly data: string;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
}

export declare type Meeting = LazyLoading extends LazyLoadingDisabled ? EagerMeeting : LazyMeeting

export declare const Meeting: (new (init: ModelInit<Meeting>) => Meeting) & {
  copyOf(source: Meeting, mutator: (draft: MutableModel<Meeting>) => MutableModel<Meeting> | void): Meeting;
}

type EagerAttendee = {
  readonly [__modelMeta__]: {
    identifier: CustomIdentifier<Attendee, 'attendeeId'>;
    readOnlyFields: 'createdAt' | 'updatedAt';
  };
  readonly attendeeId: string;
  readonly name: string;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
}

type LazyAttendee = {
  readonly [__modelMeta__]: {
    identifier: CustomIdentifier<Attendee, 'attendeeId'>;
    readOnlyFields: 'createdAt' | 'updatedAt';
  };
  readonly attendeeId: string;
  readonly name: string;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
}

export declare type Attendee = LazyLoading extends LazyLoadingDisabled ? EagerAttendee : LazyAttendee

export declare const Attendee: (new (init: ModelInit<Attendee>) => Attendee) & {
  copyOf(source: Attendee, mutator: (draft: MutableModel<Attendee>) => MutableModel<Attendee> | void): Attendee;
}

type EagerGuardianStudent = {
  readonly [__modelMeta__]: {
    identifier: ManagedIdentifier<GuardianStudent, 'id'>;
    readOnlyFields: 'createdAt' | 'updatedAt';
  };
  readonly id: string;
  readonly guardianId?: string | null;
  readonly studentId?: string | null;
  readonly guardian: Guardian;
  readonly student: Student;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
}

type LazyGuardianStudent = {
  readonly [__modelMeta__]: {
    identifier: ManagedIdentifier<GuardianStudent, 'id'>;
    readOnlyFields: 'createdAt' | 'updatedAt';
  };
  readonly id: string;
  readonly guardianId?: string | null;
  readonly studentId?: string | null;
  readonly guardian: AsyncItem<Guardian>;
  readonly student: AsyncItem<Student>;
  readonly createdAt?: string | null;
  readonly updatedAt?: string | null;
}

export declare type GuardianStudent = LazyLoading extends LazyLoadingDisabled ? EagerGuardianStudent : LazyGuardianStudent

export declare const GuardianStudent: (new (init: ModelInit<GuardianStudent>) => GuardianStudent) & {
  copyOf(source: GuardianStudent, mutator: (draft: MutableModel<GuardianStudent>) => MutableModel<GuardianStudent> | void): GuardianStudent;
}