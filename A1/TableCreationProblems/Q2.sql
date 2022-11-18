CREATE TABLE Physician(
	PhysID						NUMBER,
	PhysName					VARCHAR2(50) CONSTRAINT PhysName_Null NOT NULL,
	PhysDept					NUMBER,
	TreatId						NUMBER,
	CONSTRAINT Physician_PK			        PRIMARY KEY(PhysID),
	CONSTRAINT Physician_FK1		        FOREIGN KEY(PhysDept) REFERENCES Department(PhysDept),
	CONSTRAINT Physician_FK2			FOREIGN KEY(TreatId) REFERENCES Treatment(TreatId)
);

CREATE TABLE Department(
	PhysDept					NUMBER,
	DeptSupervisorID				NUMBER,
	CONSTRAINT Department_PK			PRIMARY KEY(PhysDept)
);

CREATE TABLE Treatment(
	TreatId						NUMBER,
	TreatDesc					VARCHAR2(200),
	TreatCost					NUMBER(10, 2),
	CONSTRAINT Treatment_PK			        PRIMARY KEY(TreatId),
	CONSTRAINT TreatCost_CK			        CHECK(TreatCost >= 50.00)
);

CREATE TABLE Patient(
	PatientId					NUMBER,
	PatientName				    	VARCHAR2(50) CONSTRAINT PatientName_Null NOT NULL,
	PatientAddress					VARCHAR2(200) CONSTRAINT PatientAddress_Null NOT NULL,
	AdminDate					DATE,
	HospitalStaydays				NUMBER,
	RoomNo					        NUMBER,
	PhysID						NUMBER,
	CONSTRAINT Patient_PK			        PRIMARY KEY(PatientId),
	CONSTRAINT Patient_FK1			        FOREIGN KEY(RoomNo) REFERENCES Room(RoomNo),
  	CONSTRAINT Patient_FK2			        FOREIGN KEY(PhysID) REFERENCES Physician(PhysID),
	CONSTRAINT HospitalStaydays_CK		  	CHECK(HospitalStaydays >= 0)
);

CREATE TABLE Room(
	RoomNo					        NUMBER,
	RoomPhone					VARCHAR2(8),
	RoomRate					NUMBER(10, 2),
	CONSTRAINT Room_PK			        PRIMARY KEY(RoomNo),
	CONSTRAINT RoomNo_CK			        CHECK(RoomNo >= 100 AND RoomNo <= 999),
  	CONSTRAINT RoomRate_CK			        CHECK(RoomRate >= 30.00 AND RoomRate <= 100.00)
);

ALTER TABLE Department
ADD CONSTRAINT Department_FK1 FOREIGN KEY(DeptSupervisorID) REFERENCES Physician(PhysID);
